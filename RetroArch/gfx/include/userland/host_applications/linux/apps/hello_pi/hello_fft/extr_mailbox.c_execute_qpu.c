
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mbox_property (int,unsigned int*) ;

unsigned execute_qpu(int file_desc, unsigned num_qpus, unsigned control, unsigned noflush, unsigned timeout) {
   int i=0;
   unsigned p[32];

   p[i++] = 0;
   p[i++] = 0x00000000;
   p[i++] = 0x30011;
   p[i++] = 16;
   p[i++] = 16;
   p[i++] = num_qpus;
   p[i++] = control;
   p[i++] = noflush;
   p[i++] = timeout;

   p[i++] = 0x00000000;
   p[0] = i*sizeof *p;

   mbox_property(file_desc, p);
   return p[5];
}
