
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_8__ {size_t CryptoId; char* Name; size_t* KeySizes; int VariableKeySize; size_t BlockSize; } ;
struct TYPE_7__ {int CryptosList; } ;
typedef TYPE_1__ IKE_ENGINE ;
typedef TYPE_2__ IKE_CRYPTO ;


 int Add (int ,TYPE_2__*) ;
 size_t MIN (size_t,int) ;
 TYPE_2__* ZeroMalloc (int) ;

IKE_CRYPTO *NewIkeCrypto(IKE_ENGINE *e, UINT crypto_id, char *name, UINT *key_sizes, UINT num_key_sizes, UINT block_size)
{
 IKE_CRYPTO *c;
 UINT i;

 if (e == ((void*)0) || name == ((void*)0) || key_sizes == ((void*)0))
 {
  return ((void*)0);
 }

 c = ZeroMalloc(sizeof(IKE_CRYPTO));

 c->CryptoId = crypto_id;
 c->Name = name;

 for (i = 0;i < MIN(num_key_sizes, 16);i++)
 {
  c->KeySizes[i] = key_sizes[i];
 }

 if (num_key_sizes >= 2)
 {
  c->VariableKeySize = 1;
 }

 c->BlockSize = block_size;

 Add(e->CryptosList, c);

 return c;
}
