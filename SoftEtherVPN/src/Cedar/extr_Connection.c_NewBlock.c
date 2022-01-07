
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int IsFlooding; int Size; int SizeofData; void* Buf; void* Compressed; scalar_t__ Param1; scalar_t__ Ttl; scalar_t__ PriorityQoS; } ;
typedef TYPE_1__ BLOCK ;


 int CalcCompress (int) ;
 int Compress (void*,int,void*,int) ;
 void* FALSE ;
 int Free (void*) ;
 int MAX_PACKET_SIZE ;
 void* MallocFast (int) ;
 void* TRUE ;
 int Uncompress (void*,int,void*,int) ;

BLOCK *NewBlock(void *data, UINT size, int compress)
{
 BLOCK *b;

 if (data == ((void*)0))
 {
  return ((void*)0);
 }

 b = MallocFast(sizeof(BLOCK));

 b->IsFlooding = 0;

 b->PriorityQoS = b->Ttl = b->Param1 = 0;

 if (compress == 0)
 {

  b->Compressed = FALSE;
  b->Buf = data;
  b->Size = size;
  b->SizeofData = size;
 }
 else if (compress == 1)
 {
  UINT max_size;


  b->Compressed = TRUE;
  max_size = CalcCompress(size);
  b->Buf = MallocFast(max_size);
  b->Size = Compress(b->Buf, max_size, data, size);
  b->SizeofData = size;


  Free(data);
 }
 else
 {

  UINT max_size;

  b->Compressed = FALSE;
  max_size = MAX_PACKET_SIZE;
  b->Buf = MallocFast(max_size);
  b->Size = Uncompress(b->Buf, max_size, data, size);
  b->SizeofData = size;


  Free(data);
 }

 return b;
}
