
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 int DCFlushRangeNoSync (void*,size_t) ;
 int ICInvalidateRange (void*,size_t) ;
 int _sync () ;
 int* exception_location ;
 int memcpy (void*,void*,size_t) ;

void __exception_load(u32 nExc,void *data,u32 len,void *patch)
{
 void *pAddr = (void*)(0x80000000|exception_location[nExc]);
 memcpy(pAddr,data,len);
 if(patch)
  *(u32*)((u32)pAddr+(patch-data)) |= nExc;

 DCFlushRangeNoSync(pAddr,len);
 ICInvalidateRange(pAddr,len);
 _sync();
}
