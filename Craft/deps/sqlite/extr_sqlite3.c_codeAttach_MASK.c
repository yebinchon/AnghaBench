#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_24__ {scalar_t__ mallocFailed; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_23__ {char* zToken; } ;
struct TYPE_28__ {scalar_t__ op; TYPE_1__ u; } ;
struct TYPE_27__ {int nArg; } ;
struct TYPE_26__ {TYPE_3__* pParse; } ;
struct TYPE_25__ {int /*<<< orphan*/  nErr; TYPE_2__* db; } ;
typedef  TYPE_3__ Parse ;
typedef  TYPE_4__ NameContext ;
typedef  TYPE_5__ FuncDef ;
typedef  TYPE_6__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  OP_Expire ; 
 int /*<<< orphan*/  OP_Function ; 
 int /*<<< orphan*/  P4_FUNCDEF ; 
 int SQLITE_ATTACH ; 
 int SQLITE_OK ; 
 scalar_t__ TK_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_4__*,TYPE_6__*) ; 
 int FUNC3 (TYPE_3__*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_6__*) ; 
 int FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(
  Parse *pParse,       /* The parser context */
  int type,            /* Either SQLITE_ATTACH or SQLITE_DETACH */
  FuncDef const *pFunc,/* FuncDef wrapper for detachFunc() or attachFunc() */
  Expr *pAuthArg,      /* Expression to pass to authorization callback */
  Expr *pFilename,     /* Name of database file */
  Expr *pDbname,       /* Name of the database to use internally */
  Expr *pKey           /* Database key for encryption extension */
){
  int rc;
  NameContext sName;
  Vdbe *v;
  sqlite3* db = pParse->db;
  int regArgs;

  FUNC1(&sName, 0, sizeof(NameContext));
  sName.pParse = pParse;

  if( 
      SQLITE_OK!=(rc = FUNC2(&sName, pFilename)) ||
      SQLITE_OK!=(rc = FUNC2(&sName, pDbname)) ||
      SQLITE_OK!=(rc = FUNC2(&sName, pKey))
  ){
    pParse->nErr++;
    goto attach_end;
  }

#ifndef SQLITE_OMIT_AUTHORIZATION
  if( pAuthArg ){
    char *zAuthArg;
    if( pAuthArg->op==TK_STRING ){
      zAuthArg = pAuthArg->u.zToken;
    }else{
      zAuthArg = 0;
    }
    rc = FUNC3(pParse, type, zAuthArg, 0, 0);
    if(rc!=SQLITE_OK ){
      goto attach_end;
    }
  }
#endif /* SQLITE_OMIT_AUTHORIZATION */


  v = FUNC7(pParse);
  regArgs = FUNC6(pParse, 4);
  FUNC4(pParse, pFilename, regArgs);
  FUNC4(pParse, pDbname, regArgs+1);
  FUNC4(pParse, pKey, regArgs+2);

  FUNC0( v || db->mallocFailed );
  if( v ){
    FUNC9(v, OP_Function, 0, regArgs+3-pFunc->nArg, regArgs+3);
    FUNC0( pFunc->nArg==-1 || (pFunc->nArg&0xff)==pFunc->nArg );
    FUNC11(v, (u8)(pFunc->nArg));
    FUNC10(v, -1, (char *)pFunc, P4_FUNCDEF);

    /* Code an OP_Expire. For an ATTACH statement, set P1 to true (expire this
    ** statement only). For DETACH, set it to false (expire all existing
    ** statements).
    */
    FUNC8(v, OP_Expire, (type==SQLITE_ATTACH));
  }
  
attach_end:
  FUNC5(db, pFilename);
  FUNC5(db, pDbname);
  FUNC5(db, pKey);
}