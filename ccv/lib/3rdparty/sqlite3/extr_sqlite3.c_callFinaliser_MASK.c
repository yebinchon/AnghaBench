#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ pModule; } ;
typedef  TYPE_1__ sqlite3_vtab ;
struct TYPE_10__ {int nVTrans; TYPE_4__** aVTrans; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_11__ {scalar_t__ iSavepoint; TYPE_1__* pVtab; } ;
typedef  TYPE_4__ VTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC2(sqlite3 *db, int offset){
  int i;
  if( db->aVTrans ){
    VTable **aVTrans = db->aVTrans;
    db->aVTrans = 0;
    for(i=0; i<db->nVTrans; i++){
      VTable *pVTab = aVTrans[i];
      sqlite3_vtab *p = pVTab->pVtab;
      if( p ){
        int (*x)(sqlite3_vtab *);
        x = *(int (**)(sqlite3_vtab *))((char *)p->pModule + offset);
        if( x ) x(p);
      }
      pVTab->iSavepoint = 0;
      FUNC1(pVTab);
    }
    FUNC0(db, aVTrans);
    db->nVTrans = 0;
  }
}