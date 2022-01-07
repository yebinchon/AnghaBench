
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int locked; TYPE_2__* db; TYPE_1__* pBt; } ;
struct TYPE_6__ {int mutex; } ;
struct TYPE_5__ {TYPE_2__* db; int mutex; } ;
typedef TYPE_3__ Btree ;


 int assert (int) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_held (int ) ;
 int sqlite3_mutex_notheld (int ) ;

__attribute__((used)) static void lockBtreeMutex(Btree *p){
  assert( p->locked==0 );
  assert( sqlite3_mutex_notheld(p->pBt->mutex) );
  assert( sqlite3_mutex_held(p->db->mutex) );

  sqlite3_mutex_enter(p->pBt->mutex);
  p->pBt->db = p->db;
  p->locked = 1;
}
