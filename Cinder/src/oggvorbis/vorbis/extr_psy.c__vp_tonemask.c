
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int n; int total_octave_lines; float* ath; scalar_t__ tonecurves; TYPE_1__* vi; } ;
typedef TYPE_2__ vorbis_look_psy ;
struct TYPE_6__ {float ath_adjatt; float ath_maxatt; } ;


 float NEGINF ;
 float* alloca (int) ;
 int max_seeds (TYPE_2__*,float*,float*) ;
 int seed_loop (TYPE_2__*,float const***,float*,float*,float*,float) ;

void _vp_tonemask(vorbis_look_psy *p,
                  float *logfft,
                  float *logmask,
                  float global_specmax,
                  float local_specmax){

  int i,n=p->n;

  float *seed=alloca(sizeof(*seed)*p->total_octave_lines);
  float att=local_specmax+p->vi->ath_adjatt;
  for(i=0;i<p->total_octave_lines;i++)seed[i]=NEGINF;



  if(att<p->vi->ath_maxatt)att=p->vi->ath_maxatt;

  for(i=0;i<n;i++)
    logmask[i]=p->ath[i]+att;


  seed_loop(p,(const float ***)p->tonecurves,logfft,logmask,seed,global_specmax);
  max_seeds(p,seed,logmask);

}
