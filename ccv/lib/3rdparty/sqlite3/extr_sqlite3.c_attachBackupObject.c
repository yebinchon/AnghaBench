
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int isAttached; struct TYPE_4__* pNext; int pSrc; } ;
typedef TYPE_1__ sqlite3_backup ;


 int assert (int ) ;
 int sqlite3BtreeHoldsMutex (int ) ;
 int sqlite3BtreePager (int ) ;
 TYPE_1__** sqlite3PagerBackupPtr (int ) ;

__attribute__((used)) static void attachBackupObject(sqlite3_backup *p){
  sqlite3_backup **pp;
  assert( sqlite3BtreeHoldsMutex(p->pSrc) );
  pp = sqlite3PagerBackupPtr(sqlite3BtreePager(p->pSrc));
  p->pNext = *pp;
  *pp = p;
  p->isAttached = 1;
}
