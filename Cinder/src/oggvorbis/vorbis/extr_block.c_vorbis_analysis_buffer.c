
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int channels; } ;
typedef TYPE_1__ vorbis_info ;
struct TYPE_6__ {int pcm_current; int pcm_storage; float** pcm; float** pcmret; TYPE_3__* backend_state; TYPE_1__* vi; } ;
typedef TYPE_2__ vorbis_dsp_state ;
struct TYPE_7__ {int * header2; int * header1; int * header; } ;
typedef TYPE_3__ private_state ;


 int _ogg_free (int *) ;
 float* _ogg_realloc (float*,int) ;

float **vorbis_analysis_buffer(vorbis_dsp_state *v, int vals){
  int i;
  vorbis_info *vi=v->vi;
  private_state *b=v->backend_state;


  if(b->header)_ogg_free(b->header);b->header=((void*)0);
  if(b->header1)_ogg_free(b->header1);b->header1=((void*)0);
  if(b->header2)_ogg_free(b->header2);b->header2=((void*)0);




  if(v->pcm_current+vals>=v->pcm_storage){
    v->pcm_storage=v->pcm_current+vals*2;

    for(i=0;i<vi->channels;i++){
      v->pcm[i]=_ogg_realloc(v->pcm[i],v->pcm_storage*sizeof(*v->pcm[i]));
    }
  }

  for(i=0;i<vi->channels;i++)
    v->pcmret[i]=v->pcm[i]+v->pcm_current;

  return(v->pcmret);
}
