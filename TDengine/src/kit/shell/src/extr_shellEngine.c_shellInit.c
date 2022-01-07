
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arguments {scalar_t__* file; int * commands; int database; int * password; int * user; int host; scalar_t__ is_use_passwd; int * timezone; } ;
typedef int TAOS ;


 char* CLIENT_VERSION ;
 int EXIT_SUCCESS ;
 char* PROMPT_HEADER ;
 char* SERVER_VERSION ;
 int TSDB_OPTION_TIMEZONE ;
 int exit (int ) ;
 int fflush (int ) ;
 int * getpass (char*) ;
 int printf (char*,...) ;
 int read_history () ;
 int shellRunCommand (int *,char*) ;
 int source_file (int *,scalar_t__*) ;
 int stdout ;
 char* strtok (int *,char*) ;
 int taos_close (int *) ;
 int * taos_connect (int ,int *,int *,int ,int ) ;
 int taos_get_client_info () ;
 int taos_get_server_info (int *) ;
 int taos_init () ;
 int taos_options (int ,int *) ;
 int * tsDefaultPass ;
 int * tsDefaultUser ;
 int tsMeterMetaKeepTimer ;
 int tsMetricMetaKeepTimer ;
 int tsMgmtShellPort ;
 int write_history () ;

TAOS *shellInit(struct arguments *args) {
  printf("\n");
  printf(CLIENT_VERSION, taos_get_client_info());
  fflush(stdout);


  if (args->timezone != ((void*)0)) {
    taos_options(TSDB_OPTION_TIMEZONE, args->timezone);
  }

  if (args->is_use_passwd) {
    if (args->password == ((void*)0)) args->password = getpass("Enter password: ");
  } else {
    args->password = tsDefaultPass;
  }

  if (args->user == ((void*)0)) {
    args->user = tsDefaultUser;
  }

  taos_init();





  tsMetricMetaKeepTimer = 3;
  tsMeterMetaKeepTimer = 3000;


  TAOS *con = taos_connect(args->host, args->user, args->password, args->database, tsMgmtShellPort);
  if (con == ((void*)0)) {
    return con;
  }


  read_history();


  if (args->commands != ((void*)0) || args->file[0] != 0) {
    if (args->commands != ((void*)0)) {
      char *token;
      token = strtok(args->commands, ";");
      while (token != ((void*)0)) {
        printf("%s%s\n", PROMPT_HEADER, token);
        shellRunCommand(con, token);
        token = strtok(((void*)0), ";");
      }
    }

    if (args->file[0] != 0) {
      source_file(con, args->file);
    }
    taos_close(con);

    write_history();
    exit(EXIT_SUCCESS);
  }

  printf(SERVER_VERSION, taos_get_server_info(con));

  return con;
}
