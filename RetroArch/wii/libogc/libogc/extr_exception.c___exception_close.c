
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 int DCFlushRangeNoSync (void*,int) ;
 int ICInvalidateRange (void*,int) ;
 int _CPU_ISR_Disable (size_t) ;
 int _CPU_ISR_Restore (size_t) ;
 int __exception_sethandler (size_t,int *) ;
 int _sync () ;
 int* exception_location ;

void __exception_close(u32 except)
{
 u32 level;
 void *pAdd = (void*)(0x80000000|exception_location[except]);

 _CPU_ISR_Disable(level);
 __exception_sethandler(except,((void*)0));

 *(u32*)pAdd = 0x4C000064;
 DCFlushRangeNoSync(pAdd,0x100);
 ICInvalidateRange(pAdd,0x100);
 _sync();
 _CPU_ISR_Restore(level);
}
