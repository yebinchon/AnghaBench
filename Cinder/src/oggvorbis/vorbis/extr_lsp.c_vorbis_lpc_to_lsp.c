
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Laguerre_With_Deflation (float*,int,float*) ;
 int Newton_Raphson (float*,int,float*) ;
 float acos (float) ;
 float* alloca (int) ;
 int cheby (float*,int) ;
 int comp ;
 int qsort (float*,int,int,int ) ;

int vorbis_lpc_to_lsp(float *lpc,float *lsp,int m){
  int order2=(m+1)>>1;
  int g1_order,g2_order;
  float *g1=alloca(sizeof(*g1)*(order2+1));
  float *g2=alloca(sizeof(*g2)*(order2+1));
  float *g1r=alloca(sizeof(*g1r)*(order2+1));
  float *g2r=alloca(sizeof(*g2r)*(order2+1));
  int i;


  g1_order=(m+1)>>1;
  g2_order=(m) >>1;






  g1[g1_order] = 1.f;
  for(i=1;i<=g1_order;i++) g1[g1_order-i] = lpc[i-1]+lpc[m-i];
  g2[g2_order] = 1.f;
  for(i=1;i<=g2_order;i++) g2[g2_order-i] = lpc[i-1]-lpc[m-i];

  if(g1_order>g2_order){
    for(i=2; i<=g2_order;i++) g2[g2_order-i] += g2[g2_order-i+2];
  }else{
    for(i=1; i<=g1_order;i++) g1[g1_order-i] -= g1[g1_order-i+1];
    for(i=1; i<=g2_order;i++) g2[g2_order-i] += g2[g2_order-i+1];
  }


  cheby(g1,g1_order);
  cheby(g2,g2_order);


  if(Laguerre_With_Deflation(g1,g1_order,g1r) ||
     Laguerre_With_Deflation(g2,g2_order,g2r))
    return(-1);

  Newton_Raphson(g1,g1_order,g1r);
  Newton_Raphson(g2,g2_order,g2r);

  qsort(g1r,g1_order,sizeof(*g1r),comp);
  qsort(g2r,g2_order,sizeof(*g2r),comp);

  for(i=0;i<g1_order;i++)
    lsp[i*2] = acos(g1r[i]);

  for(i=0;i<g2_order;i++)
    lsp[i*2+1] = acos(g2r[i]);
  return(0);
}
