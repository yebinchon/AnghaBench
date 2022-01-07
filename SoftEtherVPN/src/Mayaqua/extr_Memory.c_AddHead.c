
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef void UCHAR ;


 int Copy (void*,void*,scalar_t__) ;
 void* Malloc (scalar_t__) ;

void *AddHead(void *src, UINT src_size, void *head, UINT head_size)
{
 void *ret;
 UINT ret_size;

 if ((src == ((void*)0) && src_size != 0) || (head == ((void*)0) && head_size != 0))
 {
  return ((void*)0);
 }

 ret_size = src_size + head_size;

 ret = Malloc(ret_size);

 Copy(ret, head, head_size);

 Copy(((UCHAR *)ret) + head_size, src, src_size);

 return ret;
}
