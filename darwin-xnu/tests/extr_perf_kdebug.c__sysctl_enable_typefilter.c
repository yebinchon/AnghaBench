
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CTL_KERN ;
 size_t KDBG_TYPEFILTER_BITMAP_SIZE ;
 int KERN_KDEBUG ;
 int KERN_KDSET_TYPEFILTER ;
 int T_FAIL (char*) ;
 scalar_t__ sysctl (int*,int,int *,size_t*,int *,int ) ;

__attribute__((used)) static void _sysctl_enable_typefilter(uint8_t* type_filter_bitmap) {
 int mib[] = { CTL_KERN, KERN_KDEBUG, KERN_KDSET_TYPEFILTER };
 size_t needed = KDBG_TYPEFILTER_BITMAP_SIZE;
 if(sysctl(mib, 3, type_filter_bitmap, &needed, ((void*)0), 0)) {
  T_FAIL("KERN_KDSET_TYPEFILTER sysctl failed");
 }
}
