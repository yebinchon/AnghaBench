
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int AdapterList; int BasicDevice; int * ProtocolHandle; } ;
typedef int SL_CTX ;
typedef int DRIVER_OBJECT ;


 int NdisDeregisterProtocolDriver (int *) ;
 int SlFreeDevice (int ) ;
 int SlFreeList (int ) ;
 int SlZero (TYPE_1__*,int) ;
 TYPE_1__* sl ;

void SlUnloadProc(DRIVER_OBJECT *driver_object)
{

 if (sl->ProtocolHandle != ((void*)0))
 {
  NdisDeregisterProtocolDriver(sl->ProtocolHandle);
  sl->ProtocolHandle = ((void*)0);
 }


 SlFreeDevice(sl->BasicDevice);


 SlFreeList(sl->AdapterList);


 SlZero(sl, sizeof(SL_CTX));
}
