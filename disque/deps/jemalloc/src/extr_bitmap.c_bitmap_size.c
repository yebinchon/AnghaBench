
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bitmap_info_t ;


 int bitmap_info_init (int *,size_t) ;
 size_t bitmap_info_ngroups (int *) ;

size_t
bitmap_size(size_t nbits)
{
 bitmap_info_t binfo;

 bitmap_info_init(&binfo, nbits);
 return (bitmap_info_ngroups(&binfo));
}
