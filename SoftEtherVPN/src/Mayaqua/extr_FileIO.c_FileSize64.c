
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_5__ {int HamMode; TYPE_1__* HamBuf; int pData; } ;
struct TYPE_4__ {int Size; } ;
typedef TYPE_2__ IO ;


 int OSFileSize (int ) ;

UINT64 FileSize64(IO *o)
{

 if (o == ((void*)0))
 {
  return 0;
 }

 if (o->HamMode == 0)
 {
  return OSFileSize(o->pData);
 }
 else
 {
  return (UINT64)o->HamBuf->Size;
 }
}
