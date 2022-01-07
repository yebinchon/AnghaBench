
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Size; void* Data; } ;
typedef TYPE_1__ VALUE ;
typedef int UINT ;


 int Copy (void*,void*,int) ;
 void* Malloc (int) ;

VALUE *NewDataValue(void *data, UINT size)
{
 VALUE *v;

 if (data == ((void*)0))
 {
  return ((void*)0);
 }


 v = Malloc(sizeof(VALUE));


 v->Size = size;
 v->Data = Malloc(v->Size);
 Copy(v->Data, data, size);

 return v;
}
