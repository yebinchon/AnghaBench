
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__* KeySizes; } ;
typedef TYPE_1__ IKE_CRYPTO ;



bool IkeCheckKeySize(IKE_CRYPTO *c, UINT size)
{
 bool ok = 0;
 UINT i;

 if (c == ((void*)0) || size == 0)
 {
  return 0;
 }

 for (i = 0;i < sizeof(c->KeySizes) / sizeof(UINT);i++)
 {
  if (c->KeySizes[i] == size)
  {
   ok = 1;
   break;
  }
 }

 return ok;
}
