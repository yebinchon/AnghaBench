
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 int NdisMoveMemory (void*,void*,scalar_t__) ;

void SlCopy(void *dst, void *src, UINT size)
{

 if (dst == ((void*)0) || src == ((void*)0) || size == 0)
 {
  return;
 }


 NdisMoveMemory(dst, src, size);
}
