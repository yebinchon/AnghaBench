#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {TYPE_1__* aDb; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_23__ {int /*<<< orphan*/  zName; int /*<<< orphan*/  tnum; } ;
typedef  TYPE_3__ Table ;
struct TYPE_25__ {int tnum; scalar_t__ onError; int /*<<< orphan*/  zName; int /*<<< orphan*/  pSchema; TYPE_3__* pTable; } ;
struct TYPE_24__ {int /*<<< orphan*/  nTab; TYPE_2__* db; } ;
struct TYPE_21__ {int /*<<< orphan*/  zName; } ;
typedef  TYPE_4__ Parse ;
typedef  int /*<<< orphan*/  KeyInfo ;
typedef  TYPE_5__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  OE_Abort ; 
 scalar_t__ OE_None ; 
 int OPFLAG_BULKCSR ; 
 int OPFLAG_P2ISREG ; 
 int OPFLAG_USESEEKRESULT ; 
 int /*<<< orphan*/  OP_Clear ; 
 int /*<<< orphan*/  OP_Close ; 
 int /*<<< orphan*/  OP_Goto ; 
 int /*<<< orphan*/  OP_IdxInsert ; 
 int /*<<< orphan*/  OP_Next ; 
 int /*<<< orphan*/  OP_OpenRead ; 
 int /*<<< orphan*/  OP_OpenWrite ; 
 int /*<<< orphan*/  OP_Rewind ; 
 int /*<<< orphan*/  OP_SorterCompare ; 
 int /*<<< orphan*/  OP_SorterData ; 
 int /*<<< orphan*/  OP_SorterInsert ; 
 int /*<<< orphan*/  OP_SorterNext ; 
 int /*<<< orphan*/  OP_SorterOpen ; 
 int /*<<< orphan*/  OP_SorterSort ; 
 int /*<<< orphan*/  P4_KEYINFO ; 
 int /*<<< orphan*/  P4_KEYINFO_HANDOFF ; 
 int /*<<< orphan*/  P4_STATIC ; 
 int /*<<< orphan*/  SQLITE_CONSTRAINT_UNIQUE ; 
 int /*<<< orphan*/  SQLITE_REINDEX ; 
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_5__*,int,int,int) ; 
 int FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,int,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC17(Parse *pParse, Index *pIndex, int memRootPage){
  Table *pTab = pIndex->pTable;  /* The table that is indexed */
  int iTab = pParse->nTab++;     /* Btree cursor used for pTab */
  int iIdx = pParse->nTab++;     /* Btree cursor used for pIndex */
  int iSorter;                   /* Cursor opened by OpenSorter (if in use) */
  int addr1;                     /* Address of top of loop */
  int addr2;                     /* Address to jump to for next iteration */
  int tnum;                      /* Root page of index */
  Vdbe *v;                       /* Generate code into this virtual machine */
  KeyInfo *pKey;                 /* KeyInfo for index */
  int regRecord;                 /* Register holding assemblied index record */
  sqlite3 *db = pParse->db;      /* The database connection */
  int iDb = FUNC8(db, pIndex->pSchema);

#ifndef SQLITE_OMIT_AUTHORIZATION
  if( FUNC0(pParse, SQLITE_REINDEX, pIndex->zName, 0,
      db->aDb[iDb].zName ) ){
    return;
  }
#endif

  /* Require a write-lock on the table to perform this operation */
  FUNC9(pParse, iDb, pTab->tnum, 1, pTab->zName);

  v = FUNC3(pParse);
  if( v==0 ) return;
  if( memRootPage>=0 ){
    tnum = memRootPage;
  }else{
    tnum = pIndex->tnum;
    FUNC11(v, OP_Clear, tnum, iDb);
  }
  pKey = FUNC5(pParse, pIndex);
  FUNC13(v, OP_OpenWrite, iIdx, tnum, iDb, 
                    (char *)pKey, P4_KEYINFO_HANDOFF);
  FUNC14(v, OPFLAG_BULKCSR|((memRootPage>=0)?OPFLAG_P2ISREG:0));

  /* Open the sorter cursor if we are to use one. */
  iSorter = pParse->nTab++;
  FUNC13(v, OP_SorterOpen, iSorter, 0, 0, (char*)pKey, P4_KEYINFO);

  /* Open the table. Loop through all rows of the table, inserting index
  ** records into the sorter. */
  FUNC6(pParse, iTab, iDb, pTab, OP_OpenRead);
  addr1 = FUNC11(v, OP_Rewind, iTab, 0);
  regRecord = FUNC2(pParse);

  FUNC1(pParse, pIndex, iTab, regRecord, 1);
  FUNC11(v, OP_SorterInsert, iSorter, regRecord);
  FUNC11(v, OP_Next, iTab, addr1+1);
  FUNC16(v, addr1);
  addr1 = FUNC11(v, OP_SorterSort, iSorter, 0);
  if( pIndex->onError!=OE_None ){
    int j2 = FUNC15(v) + 3;
    FUNC11(v, OP_Goto, 0, j2);
    addr2 = FUNC15(v);
    FUNC12(v, OP_SorterCompare, iSorter, j2, regRecord);
    FUNC4(pParse, SQLITE_CONSTRAINT_UNIQUE,
        OE_Abort, "indexed columns are not unique", P4_STATIC
    );
  }else{
    addr2 = FUNC15(v);
  }
  FUNC11(v, OP_SorterData, iSorter, regRecord);
  FUNC12(v, OP_IdxInsert, iIdx, regRecord, 1);
  FUNC14(v, OPFLAG_USESEEKRESULT);
  FUNC7(pParse, regRecord);
  FUNC11(v, OP_SorterNext, iSorter, addr2);
  FUNC16(v, addr1);

  FUNC10(v, OP_Close, iTab);
  FUNC10(v, OP_Close, iIdx);
  FUNC10(v, OP_Close, iSorter);
}