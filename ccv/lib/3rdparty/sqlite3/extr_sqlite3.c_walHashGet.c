
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int ht_slot ;
typedef int Wal ;


 size_t HASHTABLE_NPAGE ;
 scalar_t__ HASHTABLE_NPAGE_ONE ;
 int SQLITE_OK ;
 int WALINDEX_HDR_SIZE ;
 int assert (int) ;
 int walIndexPage (int *,int,scalar_t__ volatile**) ;

__attribute__((used)) static int walHashGet(
  Wal *pWal,
  int iHash,
  volatile ht_slot **paHash,
  volatile u32 **paPgno,
  u32 *piZero
){
  int rc;
  volatile u32 *aPgno;

  rc = walIndexPage(pWal, iHash, &aPgno);
  assert( rc==SQLITE_OK || iHash>0 );

  if( rc==SQLITE_OK ){
    u32 iZero;
    volatile ht_slot *aHash;

    aHash = (volatile ht_slot *)&aPgno[HASHTABLE_NPAGE];
    if( iHash==0 ){
      aPgno = &aPgno[WALINDEX_HDR_SIZE/sizeof(u32)];
      iZero = 0;
    }else{
      iZero = HASHTABLE_NPAGE_ONE + (iHash-1)*HASHTABLE_NPAGE;
    }

    *paPgno = &aPgno[-1];
    *paHash = aHash;
    *piZero = iZero;
  }
  return rc;
}
