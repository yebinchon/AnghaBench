
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tone_abs_limit; } ;
typedef TYPE_1__ vorbis_info_psy ;
struct TYPE_6__ {TYPE_3__* codec_setup; } ;
typedef TYPE_2__ vorbis_info ;
struct TYPE_7__ {TYPE_1__** psy_param; } ;
typedef TYPE_3__ codec_setup_info ;



__attribute__((used)) static void vorbis_encode_peak_setup(vorbis_info *vi,double s,int block,
                                    const int *suppress){
  int is=s;
  double ds=s-is;
  codec_setup_info *ci=vi->codec_setup;
  vorbis_info_psy *p=ci->psy_param[block];

  p->tone_abs_limit=suppress[is]*(1.-ds)+suppress[is+1]*ds;

  return;
}
