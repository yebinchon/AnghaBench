
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 int KS_COPY_COUNT ;
 int KS_INC (int ) ;
 int memmove (void*,void*,scalar_t__) ;

void Move(void *dst, void *src, UINT size)
{

 if (dst == ((void*)0) || src == ((void*)0) || size == 0 || dst == src)
 {
  return;
 }


 KS_INC(KS_COPY_COUNT);

 memmove(dst, src, size);
}
