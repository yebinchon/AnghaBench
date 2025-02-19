
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_PI ;
 float cos (float) ;
 float fromdB (float) ;
 float sqrt (float) ;

void vorbis_lsp_to_curve(float *curve,int *map,int n,int ln,float *lsp,int m,
                            float amp,float ampoffset){
  int i;
  float wdel=M_PI/ln;
  for(i=0;i<m;i++)lsp[i]=2.f*cos(lsp[i]);

  i=0;
  while(i<n){
    int j,k=map[i];
    float p=.5f;
    float q=.5f;
    float w=2.f*cos(wdel*k);
    for(j=1;j<m;j+=2){
      q *= w-lsp[j-1];
      p *= w-lsp[j];
    }
    if(j==m){


      q*=w-lsp[j-1];
      p*=p*(4.f-w*w);
      q*=q;
    }else{

      p*=p*(2.f-w);
      q*=q*(2.f+w);
    }

    q=fromdB(amp/sqrt(p+q)-ampoffset);

    curve[i]*=q;
    while(map[++i]==k)curve[i]*=q;
  }
}
