
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {char* Name; scalar_t__ KeySize; scalar_t__ DhId; } ;
struct TYPE_7__ {int DhsList; } ;
typedef TYPE_1__ IKE_ENGINE ;
typedef TYPE_2__ IKE_DH ;


 int Add (int ,TYPE_2__*) ;
 TYPE_2__* ZeroMalloc (int) ;

IKE_DH *NewIkeDh(IKE_ENGINE *e, UINT dh_id, char *name, UINT key_size)
{
 IKE_DH *d;

 if (e == ((void*)0) || name == ((void*)0) || key_size == 0)
 {
  return ((void*)0);
 }

 d = ZeroMalloc(sizeof(IKE_DH));

 d->DhId = dh_id;
 d->Name = name;
 d->KeySize = key_size;

 Add(e->DhsList, d);

 return d;
}
