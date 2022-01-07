
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int HashId; } ;
typedef TYPE_1__ IKE_HASH ;







 int Md5 (void*,void*,scalar_t__) ;
 int Sha1 (void*,void*,scalar_t__) ;
 int Sha2_256 (void*,void*,scalar_t__) ;
 int Sha2_384 (void*,void*,scalar_t__) ;
 int Sha2_512 (void*,void*,scalar_t__) ;
 int Zero (void*,scalar_t__) ;

void IkeHash(IKE_HASH *h, void *dst, void *src, UINT size)
{

 if (h == ((void*)0) || dst == ((void*)0) || (size != 0 && src == ((void*)0)))
 {
  Zero(dst, size);
  return;
 }

 switch (h->HashId)
 {
 case 132:

  Md5(dst, src, size);
  break;

 case 131:

  Sha1(dst, src, size);
  break;
 case 130:
  Sha2_256(dst, src, size);
  break;
 case 129:
  Sha2_384(dst, src, size);
  break;
 case 128:
  Sha2_512(dst, src, size);
  break;

 default:

  Zero(dst, size);
  break;
 }
}
