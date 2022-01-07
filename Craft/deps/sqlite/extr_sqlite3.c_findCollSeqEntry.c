
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int mallocFailed; int aCollSeq; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_13__ {char* zName; int enc; } ;
typedef TYPE_2__ CollSeq ;


 int SQLITE_UTF16BE ;
 int SQLITE_UTF16LE ;
 int SQLITE_UTF8 ;
 int assert (int) ;
 int memcpy (char*,char const*,int) ;
 int sqlite3DbFree (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* sqlite3DbMallocZero (TYPE_1__*,int) ;
 TYPE_2__* sqlite3HashFind (int *,char const*,int) ;
 TYPE_2__* sqlite3HashInsert (int *,char*,int,TYPE_2__*) ;
 int sqlite3Strlen30 (char const*) ;

__attribute__((used)) static CollSeq *findCollSeqEntry(
  sqlite3 *db,
  const char *zName,
  int create
){
  CollSeq *pColl;
  int nName = sqlite3Strlen30(zName);
  pColl = sqlite3HashFind(&db->aCollSeq, zName, nName);

  if( 0==pColl && create ){
    pColl = sqlite3DbMallocZero(db, 3*sizeof(*pColl) + nName + 1 );
    if( pColl ){
      CollSeq *pDel = 0;
      pColl[0].zName = (char*)&pColl[3];
      pColl[0].enc = SQLITE_UTF8;
      pColl[1].zName = (char*)&pColl[3];
      pColl[1].enc = SQLITE_UTF16LE;
      pColl[2].zName = (char*)&pColl[3];
      pColl[2].enc = SQLITE_UTF16BE;
      memcpy(pColl[0].zName, zName, nName);
      pColl[0].zName[nName] = 0;
      pDel = sqlite3HashInsert(&db->aCollSeq, pColl[0].zName, nName, pColl);





      assert( pDel==0 || pDel==pColl );
      if( pDel!=0 ){
        db->mallocFailed = 1;
        sqlite3DbFree(db, pDel);
        pColl = 0;
      }
    }
  }
  return pColl;
}
