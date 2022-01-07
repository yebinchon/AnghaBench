
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int volatile u32 ;
typedef int ht_slot ;
typedef int Wal ;


 int HASHTABLE_NSLOT ;
 int SQLITE_CORRUPT_BKPT ;
 int SQLITE_OK ;
 int assert (int) ;
 int memset (void*,int ,int) ;
 int walCleanupHash (int *) ;
 int walFramePage (int volatile) ;
 int walHash (int volatile) ;
 int walHashGet (int *,int ,int volatile**,int volatile**,int volatile*) ;
 int walNextHash (int) ;

__attribute__((used)) static int walIndexAppend(Wal *pWal, u32 iFrame, u32 iPage){
  int rc;
  u32 iZero = 0;
  volatile u32 *aPgno = 0;
  volatile ht_slot *aHash = 0;

  rc = walHashGet(pWal, walFramePage(iFrame), &aHash, &aPgno, &iZero);




  if( rc==SQLITE_OK ){
    int iKey;
    int idx;
    int nCollide;

    idx = iFrame - iZero;
    assert( idx <= HASHTABLE_NSLOT/2 + 1 );




    if( idx==1 ){
      int nByte = (int)((u8 *)&aHash[HASHTABLE_NSLOT] - (u8 *)&aPgno[1]);
      memset((void*)&aPgno[1], 0, nByte);
    }







    if( aPgno[idx] ){
      walCleanupHash(pWal);
      assert( !aPgno[idx] );
    }


    nCollide = idx;
    for(iKey=walHash(iPage); aHash[iKey]; iKey=walNextHash(iKey)){
      if( (nCollide--)==0 ) return SQLITE_CORRUPT_BKPT;
    }
    aPgno[idx] = iPage;
    aHash[iKey] = (ht_slot)idx;
  }


  return rc;
}
