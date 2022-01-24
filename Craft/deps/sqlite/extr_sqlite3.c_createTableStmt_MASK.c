#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int mallocFailed; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_7__ {int nCol; TYPE_3__* aCol; int /*<<< orphan*/  zName; } ;
typedef  TYPE_2__ Table ;
struct TYPE_8__ {scalar_t__ affinity; int /*<<< orphan*/  zName; } ;
typedef  TYPE_3__ Column ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const* const*) ; 
 scalar_t__ SQLITE_AFF_INTEGER ; 
 scalar_t__ SQLITE_AFF_NONE ; 
 scalar_t__ SQLITE_AFF_NUMERIC ; 
 scalar_t__ SQLITE_AFF_REAL ; 
 scalar_t__ SQLITE_AFF_TEXT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 scalar_t__ FUNC5 (char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static char *FUNC10(sqlite3 *db, Table *p){
  int i, k, n;
  char *zStmt;
  char *zSep, *zSep2, *zEnd;
  Column *pCol;
  n = 0;
  for(pCol = p->aCol, i=0; i<p->nCol; i++, pCol++){
    n += FUNC2(pCol->zName) + 5;
  }
  n += FUNC2(p->zName);
  if( n<50 ){ 
    zSep = "";
    zSep2 = ",";
    zEnd = ")";
  }else{
    zSep = "\n  ";
    zSep2 = ",\n  ";
    zEnd = "\n)";
  }
  n += 35 + 6*p->nCol;
  zStmt = FUNC6(0, n);
  if( zStmt==0 ){
    db->mallocFailed = 1;
    return 0;
  }
  FUNC8(n, zStmt, "CREATE TABLE ");
  k = FUNC7(zStmt);
  FUNC3(zStmt, &k, p->zName);
  zStmt[k++] = '(';
  for(pCol=p->aCol, i=0; i<p->nCol; i++, pCol++){
    static const char * const azType[] = {
        /* SQLITE_AFF_TEXT    */ " TEXT",
        /* SQLITE_AFF_NONE    */ "",
        /* SQLITE_AFF_NUMERIC */ " NUM",
        /* SQLITE_AFF_INTEGER */ " INT",
        /* SQLITE_AFF_REAL    */ " REAL"
    };
    int len;
    const char *zType;

    FUNC8(n-k, &zStmt[k], zSep);
    k += FUNC7(&zStmt[k]);
    zSep = zSep2;
    FUNC3(zStmt, &k, pCol->zName);
    FUNC1( pCol->affinity-SQLITE_AFF_TEXT >= 0 );
    FUNC1( pCol->affinity-SQLITE_AFF_TEXT < FUNC0(azType) );
    FUNC9( pCol->affinity==SQLITE_AFF_TEXT );
    FUNC9( pCol->affinity==SQLITE_AFF_NONE );
    FUNC9( pCol->affinity==SQLITE_AFF_NUMERIC );
    FUNC9( pCol->affinity==SQLITE_AFF_INTEGER );
    FUNC9( pCol->affinity==SQLITE_AFF_REAL );
    
    zType = azType[pCol->affinity - SQLITE_AFF_TEXT];
    len = FUNC7(zType);
    FUNC1( pCol->affinity==SQLITE_AFF_NONE 
            || pCol->affinity==FUNC5(zType) );
    FUNC4(&zStmt[k], zType, len);
    k += len;
    FUNC1( k<=n );
  }
  FUNC8(n-k, &zStmt[k], "%s", zEnd);
  return zStmt;
}