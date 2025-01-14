
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zPrefix ;
struct callback_data {int db; scalar_t__ cnt; scalar_t__ echoOn; int out; } ;
typedef int FILE ;


 int BEGIN_TIMER ;
 int END_TIMER ;
 scalar_t__ IsSpace (char) ;
 scalar_t__ _all_whitespace (char*) ;
 scalar_t__ _contains_semicolon (char*,int) ;
 scalar_t__ _is_command_terminator (char*) ;
 scalar_t__ _is_complete (char*,int) ;
 int bail_on_error ;
 int do_meta_command (char*,struct callback_data*) ;
 int exit (int) ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 char* one_input_line (char*,int *) ;
 int open_db (struct callback_data*) ;
 int printf (char*,...) ;
 char* realloc (char*,int) ;
 scalar_t__ seenInterrupt ;
 int shell_callback ;
 int shell_exec (int ,char*,int ,struct callback_data*,char**) ;
 scalar_t__ sqlite3_complete (char*) ;
 char* sqlite3_errmsg (int ) ;
 int sqlite3_free (char*) ;
 int sqlite3_snprintf (int,char*,char*,...) ;
 int stderr ;
 scalar_t__ stdin_is_interactive ;
 int strlen30 (char*) ;

__attribute__((used)) static int process_input(struct callback_data *p, FILE *in){
  char *zLine = 0;
  char *zSql = 0;
  int nSql = 0;
  int nSqlPrior = 0;
  char *zErrMsg;
  int rc;
  int errCnt = 0;
  int lineno = 0;
  int startline = 0;

  while( errCnt==0 || !bail_on_error || (in==0 && stdin_is_interactive) ){
    fflush(p->out);
    free(zLine);
    zLine = one_input_line(zSql, in);
    if( zLine==0 ){

      if( stdin_is_interactive ) printf("\n");
      break;
    }
    if( seenInterrupt ){
      if( in!=0 ) break;
      seenInterrupt = 0;
    }
    lineno++;
    if( (zSql==0 || zSql[0]==0) && _all_whitespace(zLine) ) continue;
    if( zLine && zLine[0]=='.' && nSql==0 ){
      if( p->echoOn ) printf("%s\n", zLine);
      rc = do_meta_command(zLine, p);
      if( rc==2 ){
        break;
      }else if( rc ){
        errCnt++;
      }
      continue;
    }
    if( _is_command_terminator(zLine) && _is_complete(zSql, nSql) ){
      memcpy(zLine,";",2);
    }
    nSqlPrior = nSql;
    if( zSql==0 ){
      int i;
      for(i=0; zLine[i] && IsSpace(zLine[i]); i++){}
      if( zLine[i]!=0 ){
        nSql = strlen30(zLine);
        zSql = malloc( nSql+3 );
        if( zSql==0 ){
          fprintf(stderr, "Error: out of memory\n");
          exit(1);
        }
        memcpy(zSql, zLine, nSql+1);
        startline = lineno;
      }
    }else{
      int len = strlen30(zLine);
      zSql = realloc( zSql, nSql + len + 4 );
      if( zSql==0 ){
        fprintf(stderr,"Error: out of memory\n");
        exit(1);
      }
      zSql[nSql++] = '\n';
      memcpy(&zSql[nSql], zLine, len+1);
      nSql += len;
    }
    if( zSql && _contains_semicolon(&zSql[nSqlPrior], nSql-nSqlPrior)
                && sqlite3_complete(zSql) ){
      p->cnt = 0;
      open_db(p);
      BEGIN_TIMER;
      rc = shell_exec(p->db, zSql, shell_callback, p, &zErrMsg);
      END_TIMER;
      if( rc || zErrMsg ){
        char zPrefix[100];
        if( in!=0 || !stdin_is_interactive ){
          sqlite3_snprintf(sizeof(zPrefix), zPrefix,
                           "Error: near line %d:", startline);
        }else{
          sqlite3_snprintf(sizeof(zPrefix), zPrefix, "Error:");
        }
        if( zErrMsg!=0 ){
          fprintf(stderr, "%s %s\n", zPrefix, zErrMsg);
          sqlite3_free(zErrMsg);
          zErrMsg = 0;
        }else{
          fprintf(stderr, "%s %s\n", zPrefix, sqlite3_errmsg(p->db));
        }
        errCnt++;
      }
      free(zSql);
      zSql = 0;
      nSql = 0;
    }else if( zSql && _all_whitespace(zSql) ){
      free(zSql);
      zSql = 0;
      nSql = 0;
    }
  }
  if( zSql ){
    if( !_all_whitespace(zSql) ){
      fprintf(stderr, "Error: incomplete SQL: %s\n", zSql);
    }
    free(zSql);
  }
  free(zLine);
  return errCnt>0;
}
