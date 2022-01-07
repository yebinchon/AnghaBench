
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* SCDST (int) ;
 unsigned char* SCSRC (int) ;
 int assert (int) ;
 int stage_scale3x (unsigned char*,unsigned char*,unsigned char*,unsigned char*,unsigned char*,unsigned char*,unsigned int,unsigned int) ;

__attribute__((used)) static void scale3x(void* void_dst, unsigned dst_slice, const void* void_src, unsigned src_slice, unsigned pixel, unsigned width, unsigned height)
{
 unsigned char* dst = (unsigned char*)void_dst;
 const unsigned char* src = (unsigned char*)void_src;
 unsigned count;

 assert(height >= 2);

 count = height;

 stage_scale3x(SCDST(0), SCDST(1), SCDST(2), SCSRC(0), SCSRC(0), SCSRC(1), pixel, width);

 dst = SCDST(3);

 count -= 2;
 while (count) {
  stage_scale3x(SCDST(0), SCDST(1), SCDST(2), SCSRC(0), SCSRC(1), SCSRC(2), pixel, width);

  dst = SCDST(3);
  src = SCSRC(1);

  --count;
 }

 stage_scale3x(SCDST(0), SCDST(1), SCDST(2), SCSRC(1-1), SCSRC(2-1), SCSRC(2-1), pixel, width);
}
