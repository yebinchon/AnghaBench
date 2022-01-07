
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int type_filter_bitmap ;


 int KDBG_TYPEFILTER_BITMAP_SIZE ;
 int _sysctl_enable_typefilter (int *) ;
 int memset (int *,int,int) ;

__attribute__((used)) static void enable_typefilter_all_pass() {
 uint8_t type_filter_bitmap[KDBG_TYPEFILTER_BITMAP_SIZE];
 memset(type_filter_bitmap, 0xff, sizeof(type_filter_bitmap));
 _sysctl_enable_typefilter(type_filter_bitmap);
}
