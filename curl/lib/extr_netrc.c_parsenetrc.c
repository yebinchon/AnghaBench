
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netrcbuffer ;
typedef enum host_lookup_state { ____Placeholder_host_lookup_state } host_lookup_state ;
typedef int FILE ;


 int DEBUGASSERT (char*) ;
 int FALSE ;
 int FOPEN_READTEXT ;


 int NETRC_FAILED ;
 int NETRC_FILE_MISSING ;
 int NETRC_SUCCESS ;

 int TRUE ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,int ) ;
 int free (char*) ;
 int strcasecompare (char const*,char*) ;
 int strcmp (char*,char*) ;
 char* strdup (char*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static int parsenetrc(const char *host,
                      char **loginp,
                      char **passwordp,
                      bool *login_changed,
                      bool *password_changed,
                      char *netrcfile)
{
  FILE *file;
  int retcode = NETRC_FILE_MISSING;
  char *login = *loginp;
  char *password = *passwordp;
  bool specific_login = (login && *login != 0);
  bool login_alloc = FALSE;
  bool password_alloc = FALSE;
  enum host_lookup_state state = 128;

  char state_login = 0;
  char state_password = 0;
  int state_our_login = FALSE;


  DEBUGASSERT(netrcfile);

  file = fopen(netrcfile, FOPEN_READTEXT);
  if(file) {
    char *tok;
    char *tok_buf;
    bool done = FALSE;
    char netrcbuffer[4096];
    int netrcbuffsize = (int)sizeof(netrcbuffer);

    while(!done && fgets(netrcbuffer, netrcbuffsize, file)) {
      tok = strtok_r(netrcbuffer, " \t\n", &tok_buf);
      if(tok && *tok == '#')

        continue;
      while(tok) {

        if((login && *login) && (password && *password)) {
          done = TRUE;
          break;
        }

        switch(state) {
        case 128:
          if(strcasecompare("machine", tok)) {




            state = 130;
          }
          else if(strcasecompare("default", tok)) {
            state = 129;
            retcode = NETRC_SUCCESS;
          }
          break;
        case 130:
          if(strcasecompare(host, tok)) {

            state = 129;
            retcode = NETRC_SUCCESS;
          }
          else

            state = 128;
          break;
        case 129:

          if(state_login) {
            if(specific_login) {
              state_our_login = strcasecompare(login, tok);
            }
            else if(!login || strcmp(login, tok)) {
              if(login_alloc) {
                free(login);
                login_alloc = FALSE;
              }
              login = strdup(tok);
              if(!login) {
                retcode = NETRC_FAILED;
                goto out;
              }
              login_alloc = TRUE;
            }
            state_login = 0;
          }
          else if(state_password) {
            if((state_our_login || !specific_login)
                && (!password || strcmp(password, tok))) {
              if(password_alloc) {
                free(password);
                password_alloc = FALSE;
              }
              password = strdup(tok);
              if(!password) {
                retcode = NETRC_FAILED;
                goto out;
              }
              password_alloc = TRUE;
            }
            state_password = 0;
          }
          else if(strcasecompare("login", tok))
            state_login = 1;
          else if(strcasecompare("password", tok))
            state_password = 1;
          else if(strcasecompare("machine", tok)) {

            state = 130;
            state_our_login = FALSE;
          }
          break;
        }

        tok = strtok_r(((void*)0), " \t\n", &tok_buf);
      }
    }

    out:
    if(!retcode) {

      *login_changed = FALSE;
      *password_changed = FALSE;
      if(login_alloc) {
        if(*loginp)
          free(*loginp);
        *loginp = login;
        *login_changed = TRUE;
      }
      if(password_alloc) {
        if(*passwordp)
          free(*passwordp);
        *passwordp = password;
        *password_changed = TRUE;
      }
    }
    else {
      if(login_alloc)
        free(login);
      if(password_alloc)
        free(password);
    }
    fclose(file);
  }

  return retcode;
}
