
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int decode_pll (int) ;
 int fprintf (int ,char*,int,...) ;
 int* memregl ;
 int printf (char*,int) ;
 int stderr ;
 int timer_drift ;

int pollux_get_real_snd_rate(int req_rate)
{
 int clk0_src, clk1_src, rate, div;

 clk0_src = (memregl[0xdbc4>>2] >> 1) & 7;
 clk1_src = (memregl[0xdbc8>>2] >> 1) & 7;
 if (clk0_src > 1 || clk1_src != 7) {
  fprintf(stderr, "get_real_snd_rate: bad clk sources: %d %d\n", clk0_src, clk1_src);
  return req_rate;
 }

 rate = decode_pll(clk0_src ? memregl[0xf008>>2] : memregl[0xf004>>2]);


 div = ((memregl[0xdbc4>>2] >> 4) & 0x3f) + 1;
 rate /= div;
 div = ((memregl[0xdbc8>>2] >> 4) & 0x3f) + 1;
 rate /= div;
 rate /= 64;


 rate -= rate * timer_drift / 1000000;
 printf("adjusted rate: %d\n", rate);

 if (rate < 8000-1000 || rate > 44100+1000) {
  fprintf(stderr, "get_real_snd_rate: got bad rate: %d\n", rate);
  return req_rate;
 }

 return rate;
}
