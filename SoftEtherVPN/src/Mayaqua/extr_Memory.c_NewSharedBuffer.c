
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Size; void* Data; int Ref; } ;
typedef TYPE_1__ SHARED_BUFFER ;


 int Copy (void*,void*,int) ;
 int NewRef () ;
 void* ZeroMalloc (int) ;

SHARED_BUFFER *NewSharedBuffer(void *data, UINT size)
{
 SHARED_BUFFER *b = ZeroMalloc(sizeof(SHARED_BUFFER));

 b->Ref = NewRef();
 b->Data = ZeroMalloc(size);
 b->Size = size;

 if (data != ((void*)0))
 {
  Copy(b->Data, data, size);
 }

 return b;
}
