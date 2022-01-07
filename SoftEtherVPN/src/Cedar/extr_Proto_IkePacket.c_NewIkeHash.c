
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int HashesList; } ;
struct TYPE_7__ {char* Name; scalar_t__ HashSize; scalar_t__ HashId; } ;
typedef TYPE_1__ IKE_HASH ;
typedef TYPE_2__ IKE_ENGINE ;


 int Add (int ,TYPE_1__*) ;
 TYPE_1__* ZeroMalloc (int) ;

IKE_HASH *NewIkeHash(IKE_ENGINE *e, UINT hash_id, char *name, UINT size)
{
 IKE_HASH *h;

 if (e == ((void*)0) || name == ((void*)0) || size == 0)
 {
  return ((void*)0);
 }

 h = ZeroMalloc(sizeof(IKE_HASH));

 h->HashId = hash_id;
 h->Name = name;
 h->HashSize = size;

 Add(e->HashesList, h);

 return h;
}
