#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_module ;
struct TYPE_8__ {int mallocFailed; int /*<<< orphan*/  mutex; int /*<<< orphan*/  aModule; } ;
typedef  TYPE_1__ sqlite3 ;
struct TYPE_9__ {char* zName; void (* xDestroy ) (void*) ;void* pAux; int /*<<< orphan*/  const* pModule; } ;
typedef  TYPE_2__ Module ;

/* Variables and functions */
 int SQLITE_MISUSE_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int,void*) ; 
 int FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(
  sqlite3 *db,                    /* Database in which module is registered */
  const char *zName,              /* Name assigned to this module */
  const sqlite3_module *pModule,  /* The definition of the module */
  void *pAux,                     /* Context pointer for xCreate/xConnect */
  void (*xDestroy)(void *)        /* Module destructor function */
){
  int rc = SQLITE_OK;
  int nName;

  FUNC8(db->mutex);
  nName = FUNC7(zName);
  if( FUNC5(&db->aModule, zName, nName) ){
    rc = SQLITE_MISUSE_BKPT;
  }else{
    Module *pMod;
    pMod = (Module *)FUNC4(db, sizeof(Module) + nName + 1);
    if( pMod ){
      Module *pDel;
      char *zCopy = (char *)(&pMod[1]);
      FUNC1(zCopy, zName, nName+1);
      pMod->zName = zCopy;
      pMod->pModule = pModule;
      pMod->pAux = pAux;
      pMod->xDestroy = xDestroy;
      pDel = (Module *)FUNC6(&db->aModule,zCopy,nName,(void*)pMod);
      FUNC0( pDel==0 || pDel==pMod );
      if( pDel ){
        db->mallocFailed = 1;
        FUNC3(db, pDel);
      }
    }
  }
  rc = FUNC2(db, rc);
  if( rc!=SQLITE_OK && xDestroy ) xDestroy(pAux);

  FUNC9(db->mutex);
  return rc;
}