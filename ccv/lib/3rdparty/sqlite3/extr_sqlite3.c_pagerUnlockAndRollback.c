
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ eState; int exclusiveMode; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ PAGER_ERROR ;
 scalar_t__ PAGER_OPEN ;
 scalar_t__ PAGER_READER ;
 scalar_t__ PAGER_WRITER_LOCKED ;
 int assert (int) ;
 int assert_pager_state (TYPE_1__*) ;
 int pager_end_transaction (TYPE_1__*,int ,int ) ;
 int pager_unlock (TYPE_1__*) ;
 int sqlite3BeginBenignMalloc () ;
 int sqlite3EndBenignMalloc () ;
 int sqlite3PagerRollback (TYPE_1__*) ;

__attribute__((used)) static void pagerUnlockAndRollback(Pager *pPager){
  if( pPager->eState!=PAGER_ERROR && pPager->eState!=PAGER_OPEN ){
    assert( assert_pager_state(pPager) );
    if( pPager->eState>=PAGER_WRITER_LOCKED ){
      sqlite3BeginBenignMalloc();
      sqlite3PagerRollback(pPager);
      sqlite3EndBenignMalloc();
    }else if( !pPager->exclusiveMode ){
      assert( pPager->eState==PAGER_READER );
      pager_end_transaction(pPager, 0, 0);
    }
  }
  pager_unlock(pPager);
}
