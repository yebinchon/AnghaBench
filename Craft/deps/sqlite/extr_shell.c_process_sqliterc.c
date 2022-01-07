
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback_data {int dummy; } ;
typedef int FILE ;


 char* Argv0 ;
 int fclose (int *) ;
 char* find_home_dir () ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 int process_input (struct callback_data*,int *) ;
 int sqlite3_free (char*) ;
 int sqlite3_initialize () ;
 char* sqlite3_mprintf (char*,char*) ;
 int stderr ;
 scalar_t__ stdin_is_interactive ;

__attribute__((used)) static int process_sqliterc(
  struct callback_data *p,
  const char *sqliterc_override
){
  char *home_dir = ((void*)0);
  const char *sqliterc = sqliterc_override;
  char *zBuf = 0;
  FILE *in = ((void*)0);
  int rc = 0;

  if (sqliterc == ((void*)0)) {
    home_dir = find_home_dir();
    if( home_dir==0 ){

      fprintf(stderr,"%s: Error: cannot locate your home directory\n", Argv0);

      return 1;
    }
    sqlite3_initialize();
    zBuf = sqlite3_mprintf("%s/.sqliterc",home_dir);
    sqliterc = zBuf;
  }
  in = fopen(sqliterc,"rb");
  if( in ){
    if( stdin_is_interactive ){
      fprintf(stderr,"-- Loading resources from %s\n",sqliterc);
    }
    rc = process_input(p,in);
    fclose(in);
  }
  sqlite3_free(zBuf);
  return rc;
}
