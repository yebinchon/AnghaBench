
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int Curl_safefree (char*) ;
 int * fgets (char*,int,int *) ;
 char* realloc (char*,size_t) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static char *my_get_line(FILE *fp)
{
  char buf[4096];
  char *nl = ((void*)0);
  char *line = ((void*)0);

  do {
    if(((void*)0) == fgets(buf, sizeof(buf), fp))
      break;
    if(!line) {
      line = strdup(buf);
      if(!line)
        return ((void*)0);
    }
    else {
      char *ptr;
      size_t linelen = strlen(line);
      ptr = realloc(line, linelen + strlen(buf) + 1);
      if(!ptr) {
        Curl_safefree(line);
        return ((void*)0);
      }
      line = ptr;
      strcpy(&line[linelen], buf);
    }
    nl = strchr(line, '\n');
  } while(!nl);

  if(nl)
    *nl = '\0';

  return line;
}
