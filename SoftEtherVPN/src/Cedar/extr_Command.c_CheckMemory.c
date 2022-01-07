
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;


 int Free (void**) ;
 int InputToNull (void*) ;
 void* ReAlloc (void*,int) ;
 void* ZeroMalloc (int) ;

bool CheckMemory()
{
 UINT i, num, size, j;
 void **pp;
 bool ok = 1;
 UINT old_size;

 num = 2000;
 size = 1000;
 pp = ZeroMalloc(sizeof(void *) * num);
 for (i = 0;i < num;i++)
 {
  pp[i] = ZeroMalloc(size);
  InputToNull(pp[i]);
  for (j = 0;j < size;j++)
  {
   ((UCHAR *)pp[i])[j] = j % 256;
  }
 }
 old_size = size;
 size = size * 3;
 for (i = 0;i < num;i++)
 {
  pp[i] = ReAlloc(pp[i], size);
  for (j = old_size;j < size;j++)
  {
   InputToNull((void *)(UINT)(((UCHAR *)pp[i])[j] = j % 256));
  }
 }
 for (i = 0;i < num;i++)
 {
  for (j = 0;j < size;j++)
  {
   if (((UCHAR *)pp[i])[j] != (j % 256))
   {
    ok = 0;
   }
  }
  Free(pp[i]);
 }
 Free(pp);

 return ok;
}
