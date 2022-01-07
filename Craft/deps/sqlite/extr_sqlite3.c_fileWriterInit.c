
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite3_file ;
struct TYPE_9__ {TYPE_1__* aDb; } ;
typedef TYPE_2__ sqlite3 ;
typedef int i64 ;
struct TYPE_10__ {int iBufEnd; int iBufStart; int iWriteOff; int nBuffer; int * pFile; int eFWErr; int * aBuffer; } ;
struct TYPE_8__ {int pBt; } ;
typedef TYPE_3__ FileWriter ;


 int SQLITE_NOMEM ;
 int memset (TYPE_3__*,int ,int) ;
 int sqlite3BtreeGetPageSize (int ) ;
 scalar_t__ sqlite3DbMallocRaw (TYPE_2__*,int) ;

__attribute__((used)) static void fileWriterInit(
  sqlite3 *db,
  sqlite3_file *pFile,
  FileWriter *p,
  i64 iStart
){
  int nBuf = sqlite3BtreeGetPageSize(db->aDb[0].pBt);

  memset(p, 0, sizeof(FileWriter));
  p->aBuffer = (u8 *)sqlite3DbMallocRaw(db, nBuf);
  if( !p->aBuffer ){
    p->eFWErr = SQLITE_NOMEM;
  }else{
    p->iBufEnd = p->iBufStart = (iStart % nBuf);
    p->iWriteOff = iStart - p->iBufStart;
    p->nBuffer = nBuf;
    p->pFile = pFile;
  }
}
