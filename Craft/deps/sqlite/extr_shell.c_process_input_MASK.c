#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zPrefix ;
struct callback_data {int /*<<< orphan*/  db; scalar_t__ cnt; scalar_t__ echoOn; int /*<<< orphan*/  out; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BEGIN_TIMER ; 
 int /*<<< orphan*/  END_TIMER ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int /*<<< orphan*/  bail_on_error ; 
 int FUNC5 (char*,struct callback_data*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 char* FUNC12 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct callback_data*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 char* FUNC15 (char*,int) ; 
 scalar_t__ seenInterrupt ; 
 int /*<<< orphan*/  shell_callback ; 
 int FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct callback_data*,char**) ; 
 scalar_t__ FUNC17 (char*) ; 
 char* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ stdin_is_interactive ; 
 int FUNC21 (char*) ; 

__attribute__((used)) static int FUNC22(struct callback_data *p, FILE *in){
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
    FUNC7(p->out);
    FUNC9(zLine);
    zLine = FUNC12(zSql, in);
    if( zLine==0 ){
      /* End of input */
      if( stdin_is_interactive ) FUNC14("\n");
      break;
    }
    if( seenInterrupt ){
      if( in!=0 ) break;
      seenInterrupt = 0;
    }
    lineno++;
    if( (zSql==0 || zSql[0]==0) && FUNC1(zLine) ) continue;
    if( zLine && zLine[0]=='.' && nSql==0 ){
      if( p->echoOn ) FUNC14("%s\n", zLine);
      rc = FUNC5(zLine, p);
      if( rc==2 ){ /* exit requested */
        break;
      }else if( rc ){
        errCnt++;
      }
      continue;
    }
    if( FUNC3(zLine) && FUNC4(zSql, nSql) ){
      FUNC11(zLine,";",2);
    }
    nSqlPrior = nSql;
    if( zSql==0 ){
      int i;
      for(i=0; zLine[i] && FUNC0(zLine[i]); i++){}
      if( zLine[i]!=0 ){
        nSql = FUNC21(zLine);
        zSql = FUNC10( nSql+3 );
        if( zSql==0 ){
          FUNC8(stderr, "Error: out of memory\n");
          FUNC6(1);
        }
        FUNC11(zSql, zLine, nSql+1);
        startline = lineno;
      }
    }else{
      int len = FUNC21(zLine);
      zSql = FUNC15( zSql, nSql + len + 4 );
      if( zSql==0 ){
        FUNC8(stderr,"Error: out of memory\n");
        FUNC6(1);
      }
      zSql[nSql++] = '\n';
      FUNC11(&zSql[nSql], zLine, len+1);
      nSql += len;
    }
    if( zSql && FUNC2(&zSql[nSqlPrior], nSql-nSqlPrior)
                && FUNC17(zSql) ){
      p->cnt = 0;
      FUNC13(p);
      BEGIN_TIMER;
      rc = FUNC16(p->db, zSql, shell_callback, p, &zErrMsg);
      END_TIMER;
      if( rc || zErrMsg ){
        char zPrefix[100];
        if( in!=0 || !stdin_is_interactive ){
          FUNC20(sizeof(zPrefix), zPrefix, 
                           "Error: near line %d:", startline);
        }else{
          FUNC20(sizeof(zPrefix), zPrefix, "Error:");
        }
        if( zErrMsg!=0 ){
          FUNC8(stderr, "%s %s\n", zPrefix, zErrMsg);
          FUNC19(zErrMsg);
          zErrMsg = 0;
        }else{
          FUNC8(stderr, "%s %s\n", zPrefix, FUNC18(p->db));
        }
        errCnt++;
      }
      FUNC9(zSql);
      zSql = 0;
      nSql = 0;
    }else if( zSql && FUNC1(zSql) ){
      FUNC9(zSql);
      zSql = 0;
      nSql = 0;
    }
  }
  if( zSql ){
    if( !FUNC1(zSql) ){
      FUNC8(stderr, "Error: incomplete SQL: %s\n", zSql);
    }
    FUNC9(zSql);
  }
  FUNC9(zLine);
  return errCnt>0;
}