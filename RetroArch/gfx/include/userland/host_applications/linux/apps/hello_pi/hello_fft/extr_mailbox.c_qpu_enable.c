
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mbox_property (int,unsigned int*) ;

unsigned qpu_enable(int file_desc, unsigned enable)
{
   int i=0;
   unsigned p[32];

   p[i++] = 0;
   p[i++] = 0x00000000;

   p[i++] = 0x30012;
   p[i++] = 4;
   p[i++] = 4;
   p[i++] = enable;

   p[i++] = 0x00000000;
   p[0] = i*sizeof *p;

   mbox_property(file_desc, p);
   return p[5];
}
