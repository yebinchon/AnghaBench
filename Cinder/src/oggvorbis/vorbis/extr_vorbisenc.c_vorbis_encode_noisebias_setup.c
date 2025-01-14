
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int noisemaxsupp; int** noiseoff; int noisewindowfixed; int noisewindowhimin; int noisewindowlomin; } ;
typedef TYPE_1__ vorbis_info_psy ;
struct TYPE_10__ {TYPE_5__* codec_setup; } ;
typedef TYPE_2__ vorbis_info ;
struct TYPE_11__ {int fixed; int hi; int lo; } ;
typedef TYPE_3__ noiseguard ;
struct TYPE_12__ {int** data; } ;
typedef TYPE_4__ noise3 ;
struct TYPE_13__ {TYPE_1__** psy_param; } ;
typedef TYPE_5__ codec_setup_info ;


 int P_BANDS ;
 int P_NOISECURVES ;

__attribute__((used)) static void vorbis_encode_noisebias_setup(vorbis_info *vi,double s,int block,
                                         const int *suppress,
                                         const noise3 *in,
                                         const noiseguard *guard,
                                         double userbias){
  int i,is=s,j;
  double ds=s-is;
  codec_setup_info *ci=vi->codec_setup;
  vorbis_info_psy *p=ci->psy_param[block];

  p->noisemaxsupp=suppress[is]*(1.-ds)+suppress[is+1]*ds;
  p->noisewindowlomin=guard[block].lo;
  p->noisewindowhimin=guard[block].hi;
  p->noisewindowfixed=guard[block].fixed;

  for(j=0;j<P_NOISECURVES;j++)
    for(i=0;i<P_BANDS;i++)
      p->noiseoff[j][i]=in[is].data[j][i]*(1.-ds)+in[is+1].data[j][i]*ds;



  for(j=0;j<P_NOISECURVES;j++){
    float min=p->noiseoff[j][0]+6;
    for(i=0;i<P_BANDS;i++){
      p->noiseoff[j][i]+=userbias;
      if(p->noiseoff[j][i]<min)p->noiseoff[j][i]=min;
    }
  }

  return;
}
