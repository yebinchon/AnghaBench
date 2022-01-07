
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int HamMode; int HamBuf; int pData; } ;
typedef TYPE_1__ IO ;


 int KS_ADD (int ,scalar_t__) ;
 int KS_INC (int ) ;
 int KS_IO_READ_COUNT ;
 int KS_IO_TOTAL_READ_SIZE ;
 int OSFileRead (int ,void*,scalar_t__) ;
 scalar_t__ ReadBuf (int ,void*,scalar_t__) ;

bool FileRead(IO *o, void *buf, UINT size)
{

 if (o == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }


 KS_INC(KS_IO_READ_COUNT);
 KS_ADD(KS_IO_TOTAL_READ_SIZE, size);

 if (size == 0)
 {
  return 1;
 }

 if (o->HamMode == 0)
 {
  return OSFileRead(o->pData, buf, size);
 }
 else
 {
  return ReadBuf(o->HamBuf, buf, size) == size ? 1 : 0;
 }
}
