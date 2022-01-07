
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int n; float m_val; float** noiseoffset; TYPE_1__* vi; } ;
typedef TYPE_2__ vorbis_look_psy ;
struct TYPE_4__ {float* tone_masteratt; float noisemaxsupp; } ;


 float max (float,float) ;

void _vp_offset_and_mix(vorbis_look_psy *p,
                        float *noise,
                        float *tone,
                        int offset_select,
                        float *logmask,
                        float *mdct,
                        float *logmdct){
  int i,n=p->n;
  float de, coeffi, cx;
  float toneatt=p->vi->tone_masteratt[offset_select];

  cx = p->m_val;

  for(i=0;i<n;i++){
    float val= noise[i]+p->noiseoffset[offset_select][i];
    if(val>p->vi->noisemaxsupp)val=p->vi->noisemaxsupp;
    logmask[i]=max(val,tone[i]+toneatt);
    if(offset_select == 1) {
      coeffi = -17.2;
      val = val - logmdct[i];

      if(val > coeffi){


        de = 1.0-((val-coeffi)*0.005*cx);






        if(de < 0) de = 0.0001;
      }else


        de = 1.0-((val-coeffi)*0.0003*cx);





      mdct[i] *= de;

    }
  }
}
