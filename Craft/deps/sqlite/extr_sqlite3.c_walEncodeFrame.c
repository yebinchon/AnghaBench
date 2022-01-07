
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {scalar_t__ bigEndCksum; int aSalt; int * aFrameCksum; } ;
struct TYPE_5__ {int szPage; TYPE_1__ hdr; } ;
typedef TYPE_2__ Wal ;


 scalar_t__ SQLITE_BIGENDIAN ;
 int WAL_FRAME_HDRSIZE ;
 int assert (int) ;
 int memcpy (int *,int ,int) ;
 int sqlite3Put4byte (int *,int ) ;
 int walChecksumBytes (int,int *,int,int *,int *) ;

__attribute__((used)) static void walEncodeFrame(
  Wal *pWal,
  u32 iPage,
  u32 nTruncate,
  u8 *aData,
  u8 *aFrame
){
  int nativeCksum;
  u32 *aCksum = pWal->hdr.aFrameCksum;
  assert( WAL_FRAME_HDRSIZE==24 );
  sqlite3Put4byte(&aFrame[0], iPage);
  sqlite3Put4byte(&aFrame[4], nTruncate);
  memcpy(&aFrame[8], pWal->hdr.aSalt, 8);

  nativeCksum = (pWal->hdr.bigEndCksum==SQLITE_BIGENDIAN);
  walChecksumBytes(nativeCksum, aFrame, 8, aCksum, aCksum);
  walChecksumBytes(nativeCksum, aData, pWal->szPage, aCksum, aCksum);

  sqlite3Put4byte(&aFrame[16], aCksum[0]);
  sqlite3Put4byte(&aFrame[20], aCksum[1]);
}
