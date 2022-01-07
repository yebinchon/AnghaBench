
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mbox_property (int,unsigned int*) ;

unsigned mem_lock(int file_desc, unsigned handle)
{
   int i=0;
   unsigned p[32];
   p[i++] = 0;
   p[i++] = 0x00000000;

   p[i++] = 0x3000d;
   p[i++] = 4;
   p[i++] = 4;
   p[i++] = handle;

   p[i++] = 0x00000000;
   p[0] = i*sizeof *p;

   mbox_property(file_desc, p);
   return p[5];
}
