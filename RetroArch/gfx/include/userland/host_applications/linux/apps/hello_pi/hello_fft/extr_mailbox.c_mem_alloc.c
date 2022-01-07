
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mbox_property (int,unsigned int*) ;

unsigned mem_alloc(int file_desc, unsigned size, unsigned align, unsigned flags)
{
   int i=0;
   unsigned p[32];
   p[i++] = 0;
   p[i++] = 0x00000000;

   p[i++] = 0x3000c;
   p[i++] = 12;
   p[i++] = 12;
   p[i++] = size;
   p[i++] = align;
   p[i++] = flags;

   p[i++] = 0x00000000;
   p[0] = i*sizeof *p;

   mbox_property(file_desc, p);
   return p[5];
}
