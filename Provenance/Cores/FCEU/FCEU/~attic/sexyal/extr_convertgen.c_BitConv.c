
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* bitss ;
 int printf (char*,char*,...) ;

void BitConv(int src, int dest, char *wt)
{
 if((src^dest)&1)
  if(src&1)
  {
   if(src==1) printf(" tmp%s-=128;\n",wt);
   else if(src==3) printf(" tmp%s-=32768;\n",wt);
   else if(src==5) printf(" tmp%s-=32768;\n",wt);
   else if(src==7) printf(" tmp%s-=(1<<23);\n",wt);
  }
  else
  {
   if(src==0) printf(" tmp%s+=128;\n",wt);
   else if(src==2) printf(" tmp%s+=32768;\n",wt);
   else if(src==4) printf(" tmp%s+=32768;\n",wt);
   else if(src==6) printf(" tmp%s+=(1<<23);\n",wt);
  }
 if((src>>1) != (dest>>1))
 {
  int shifty=bitss[src]-bitss[dest];
  if(shifty>0)
   printf(" tmp%s >>= %d;\n",wt,shifty);
  else
   printf(" tmp%s <<= %d;\n",wt,-shifty);
 }
}
