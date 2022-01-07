
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int* block; } ;
typedef TYPE_1__ vp_adjblock ;
struct TYPE_10__ {int* tone_masteratt; int tone_centerboost; int tone_decay; int max_curve_dB; int* toneatt; } ;
typedef TYPE_2__ vorbis_info_psy ;
struct TYPE_11__ {TYPE_4__* codec_setup; } ;
typedef TYPE_3__ vorbis_info ;
struct TYPE_12__ {TYPE_2__** psy_param; } ;
typedef TYPE_4__ codec_setup_info ;
struct TYPE_13__ {int* att; int boost; int decay; } ;
typedef TYPE_5__ att3 ;


 int P_BANDS ;

__attribute__((used)) static void vorbis_encode_tonemask_setup(vorbis_info *vi,double s,int block,
                                         const att3 *att,
                                         const int *max,
                                         const vp_adjblock *in){
  int i,is=s;
  double ds=s-is;
  codec_setup_info *ci=vi->codec_setup;
  vorbis_info_psy *p=ci->psy_param[block];



  p->tone_masteratt[0]=att[is].att[0]*(1.-ds)+att[is+1].att[0]*ds;
  p->tone_masteratt[1]=att[is].att[1]*(1.-ds)+att[is+1].att[1]*ds;
  p->tone_masteratt[2]=att[is].att[2]*(1.-ds)+att[is+1].att[2]*ds;
  p->tone_centerboost=att[is].boost*(1.-ds)+att[is+1].boost*ds;
  p->tone_decay=att[is].decay*(1.-ds)+att[is+1].decay*ds;

  p->max_curve_dB=max[is]*(1.-ds)+max[is+1]*ds;

  for(i=0;i<P_BANDS;i++)
    p->toneatt[i]=in[is].block[i]*(1.-ds)+in[is+1].block[i]*ds;
  return;
}
