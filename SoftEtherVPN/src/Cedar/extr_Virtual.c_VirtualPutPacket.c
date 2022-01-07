
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int flag1; int Now; TYPE_1__* NativeNat; } ;
typedef TYPE_2__ VH ;
typedef int UINT ;
struct TYPE_12__ {int Ref; } ;
struct TYPE_10__ {int SendStateChanged; int Lock; TYPE_3__* HaltTube; } ;
typedef TYPE_3__ TUBE ;
typedef int PKT ;


 int AddRef (int ) ;
 int Free (void*) ;
 int FreePacket (int *) ;
 int Lock (int ) ;
 int LockVirtual (TYPE_2__*) ;
 int * ParsePacket (void*,int ) ;
 int ReleaseTube (TYPE_3__*) ;
 int Tick64 () ;
 int TubeFlushEx (TYPE_3__*,int) ;
 int Unlock (int ) ;
 int UnlockVirtual (TYPE_2__*) ;
 int VirtualLayer2 (TYPE_2__*,int *) ;

bool VirtualPutPacket(VH *v, void *data, UINT size)
{
 if (data == ((void*)0))
 {

  v->flag1 = 0;

  if (v->NativeNat != ((void*)0))
  {
   if (v->NativeNat->SendStateChanged)
   {
    TUBE *halt_tube = ((void*)0);

    Lock(v->NativeNat->Lock);
    {
     if (v->NativeNat->HaltTube != ((void*)0))
     {
      halt_tube = v->NativeNat->HaltTube;

      AddRef(halt_tube->Ref);
     }
    }
    Unlock(v->NativeNat->Lock);

    if (halt_tube != ((void*)0))
    {
     TubeFlushEx(halt_tube, 1);

     v->NativeNat->SendStateChanged = 0;

     ReleaseTube(halt_tube);
    }
   }
  }
 }
 else
 {

  PKT *packet = ParsePacket(data, size);

  if (v->flag1 == 0)
  {
   v->flag1 = 1;
   v->Now = Tick64();
  }


  LockVirtual(v);
  {
   if (packet != ((void*)0))
   {

    VirtualLayer2(v, packet);


    FreePacket(packet);
   }
  }
  UnlockVirtual(v);

  Free(data);
 }

 return 1;
}
