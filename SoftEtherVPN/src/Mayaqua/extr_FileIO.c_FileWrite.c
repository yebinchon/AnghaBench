
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int WriteMode; int pData; } ;
typedef TYPE_1__ IO ;


 int KS_ADD (int ,scalar_t__) ;
 int KS_INC (int ) ;
 int KS_IO_TOTAL_WRITE_SIZE ;
 int KS_IO_WRITE_COUNT ;
 int OSFileWrite (int ,void*,scalar_t__) ;

bool FileWrite(IO *o, void *buf, UINT size)
{

 if (o == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }
 if (o->WriteMode == 0)
 {
  return 0;
 }


 KS_INC(KS_IO_WRITE_COUNT);
 KS_ADD(KS_IO_TOTAL_WRITE_SIZE, size);

 if (size == 0)
 {
  return 1;
 }

 return OSFileWrite(o->pData, buf, size);
}
