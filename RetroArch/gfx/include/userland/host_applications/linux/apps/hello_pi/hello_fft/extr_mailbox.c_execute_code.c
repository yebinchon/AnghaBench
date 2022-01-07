
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mbox_property (int,unsigned int*) ;

unsigned execute_code(int file_desc, unsigned code, unsigned r0, unsigned r1, unsigned r2, unsigned r3, unsigned r4, unsigned r5)
{
   int i=0;
   unsigned p[32];
   p[i++] = 0;
   p[i++] = 0x00000000;

   p[i++] = 0x30010;
   p[i++] = 28;
   p[i++] = 28;
   p[i++] = code;
   p[i++] = r0;
   p[i++] = r1;
   p[i++] = r2;
   p[i++] = r3;
   p[i++] = r4;
   p[i++] = r5;

   p[i++] = 0x00000000;
   p[0] = i*sizeof *p;

   mbox_property(file_desc, p);
   return p[5];
}
