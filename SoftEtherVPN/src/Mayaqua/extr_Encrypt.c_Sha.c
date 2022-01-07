
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 int SHA1 (void*,scalar_t__,void*) ;

 int SHA256 (void*,scalar_t__,void*) ;



 int SHA384 (void*,scalar_t__,void*) ;
 int SHA512 (void*,scalar_t__,void*) ;

void Sha(UINT sha_type, void *dst, void *src, UINT size)
{

 if (dst == ((void*)0) || (src == ((void*)0) && size != 0))
 {
  return;
 }

 switch(sha_type) {
 case 131:
  SHA1(src, size, dst);
  break;
 case 130:
  SHA256(src, size, dst);
  break;
 case 129:
  SHA384(src, size, dst);
  break;
 case 128:
  SHA512(src, size, dst);
  break;
 }
}
