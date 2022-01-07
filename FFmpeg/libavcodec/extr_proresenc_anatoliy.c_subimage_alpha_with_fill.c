
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int subimage_with_fill_template (int *,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int *,unsigned int,unsigned int,int,int,int) ;

__attribute__((used)) static void subimage_alpha_with_fill(uint16_t *src, unsigned x, unsigned y,
                               unsigned stride, unsigned width, unsigned height, uint16_t *dst,
                               unsigned dst_width, unsigned dst_height, int is_interlaced, int is_top_field)
{
    subimage_with_fill_template(src, x, y, stride, width, height, dst, dst_width, dst_height, 1, is_interlaced, is_top_field);
}
