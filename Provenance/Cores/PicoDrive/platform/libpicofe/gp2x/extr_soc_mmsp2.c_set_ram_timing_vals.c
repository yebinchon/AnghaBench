
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMING_CHECK (int,int,int) ;
 int fprintf (int ,char*) ;
 int* memregs ;
 int printf (char*) ;
 int spend_cycles (int) ;
 int stderr ;

__attribute__((used)) static void set_ram_timing_vals(int tCAS, int tRC, int tRAS, int tWR, int tMRD, int tRFC, int tRP, int tRCD)
{
 int i;
 TIMING_CHECK(tCAS, -2, 0x1);
 TIMING_CHECK(tRC, -1, 0xf);
 TIMING_CHECK(tRAS, -1, 0xf);
 TIMING_CHECK(tWR, -1, 0xf);
 TIMING_CHECK(tMRD, -1, 0xf);
 TIMING_CHECK(tRFC, -1, 0xf);
 TIMING_CHECK(tRP, -1, 0xf);
 TIMING_CHECK(tRCD, -1, 0xf);


 spend_cycles(1);

 memregs[0x3802>>1] = ((tMRD & 0xF) << 12) | ((tRFC & 0xF) << 8) | ((tRP & 0xF) << 4) | (tRCD & 0xF);
 memregs[0x3804>>1] = 0x8000 | ((tCAS & 1) << 12) | ((tRC & 0xF) << 8) | ((tRAS & 0xF) << 4) | (tWR & 0xF);


 spend_cycles(128*1024);
 for (i = 0; i < 8*1024; i++)
  if (!(memregs[0x3804>>1] & 0x8000))
   break;

 printf("RAM timings set.\n");
 return;
bad:
 fprintf(stderr, "RAM timings invalid.\n");
}
