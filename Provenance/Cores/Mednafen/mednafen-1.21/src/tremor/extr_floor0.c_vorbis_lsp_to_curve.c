
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ogg_uint32_t ;
typedef int ogg_int32_t ;


 int COS_LOOKUP_I_SHIFT ;
 int COS_LOOKUP_I_SZ ;
 int* MLOOP_1 ;
 int* MLOOP_2 ;
 int* MLOOP_3 ;
 int MULT31_SHIFT15 (int,int) ;
 int MULT32 (int,int) ;
 scalar_t__ alloca (int) ;
 int labs (int) ;
 int lsp_loop_asm (int*,int*,int*,int*,int,int) ;
 int lsp_norm_asm (int*,int*) ;
 int memset (int*,int ,int) ;
 int vorbis_coslook_i (int) ;
 int vorbis_fromdBlook_i (int) ;
 int vorbis_invsqlook_i (int,int) ;

void vorbis_lsp_to_curve(ogg_int32_t *curve,int *map,int n,int ln,
    ogg_int32_t *lsp,int m,
    ogg_int32_t amp,
    ogg_int32_t ampoffset,
    ogg_int32_t *icos){




  int i;
  int ampoffseti=ampoffset*4096;
  int ampi=amp;
  ogg_int32_t *ilsp=(ogg_int32_t *)alloca(m*sizeof(*ilsp));

  for(i=0;i<m;i++){

    ogg_int32_t val=MULT32(lsp[i],0x517cc2);





    if(val<0 || (val>>COS_LOOKUP_I_SHIFT)>=COS_LOOKUP_I_SZ){
      memset(curve,0,sizeof(*curve)*n);
      return;
    }

    ilsp[i]=vorbis_coslook_i(val);
  }

  i=0;
  while(i<n){
    int j,k=map[i];
    ogg_uint32_t pi=46341;
    ogg_uint32_t qi=46341;
    ogg_int32_t qexp=0,shift;
    ogg_int32_t wi=icos[k];
    j=1;
    if(m>1){
      qi*=labs(ilsp[0]-wi);
      pi*=labs(ilsp[1]-wi);

      for(j+=2;j<m;j+=2){
        if(!(shift=MLOOP_1[(pi|qi)>>25]))
          if(!(shift=MLOOP_2[(pi|qi)>>19]))
            shift=MLOOP_3[(pi|qi)>>16];
        qi=(qi>>shift)*labs(ilsp[j-1]-wi);
        pi=(pi>>shift)*labs(ilsp[j]-wi);
        qexp+=shift;
      }
    }
    if(!(shift=MLOOP_1[(pi|qi)>>25]))
      if(!(shift=MLOOP_2[(pi|qi)>>19]))
 shift=MLOOP_3[(pi|qi)>>16];



    if(m&1){


      qi=(qi>>shift)*labs(ilsp[j-1]-wi);
      pi=(pi>>shift)<<14;
      qexp+=shift;

      if(!(shift=MLOOP_1[(pi|qi)>>25]))
 if(!(shift=MLOOP_2[(pi|qi)>>19]))
   shift=MLOOP_3[(pi|qi)>>16];

      pi>>=shift;
      qi>>=shift;
      qexp+=shift-14*((m+1)>>1);

      pi=((pi*pi)>>16);
      qi=((qi*qi)>>16);
      qexp=qexp*2+m;

      pi*=(1<<14)-((wi*wi)>>14);
      qi+=pi>>14;

    }else{





      pi>>=shift;
      qi>>=shift;
      qexp+=shift-7*m;

      pi=((pi*pi)>>16);
      qi=((qi*qi)>>16);
      qexp=qexp*2+m;

      pi*=(1<<14)-wi;
      qi*=(1<<14)+wi;
      qi=(qi+pi)>>14;

    }






    if(qi&0xffff0000){
      qi>>=1; qexp++;
    }else
      while(qi && !(qi&0x8000)){
 qi<<=1; qexp--;
      }



    amp=vorbis_fromdBlook_i(ampi*
       vorbis_invsqlook_i(qi,qexp)-

       ampoffseti);




    curve[i]= MULT31_SHIFT15(curve[i],amp);
    while(map[++i]==k) curve[i]= MULT31_SHIFT15(curve[i],amp);
  }
}
