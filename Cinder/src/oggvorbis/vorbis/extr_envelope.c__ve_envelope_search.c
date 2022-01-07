
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vorbis_info_psy_global ;
struct TYPE_9__ {TYPE_5__* codec_setup; } ;
typedef TYPE_1__ vorbis_info ;
struct TYPE_10__ {int pcm_current; float** pcm; long centerW; size_t W; scalar_t__ backend_state; TYPE_1__* vi; } ;
typedef TYPE_2__ vorbis_dsp_state ;
struct TYPE_11__ {TYPE_4__* ve; } ;
typedef TYPE_3__ private_state ;
struct TYPE_12__ {int current; int searchstep; int storage; int* mark; int stretch; long ch; long cursor; long curmark; TYPE_8__* filter; int band; } ;
typedef TYPE_4__ envelope_lookup ;
struct TYPE_13__ {int* blocksizes; int psy_g_param; } ;
typedef TYPE_5__ codec_setup_info ;
struct TYPE_14__ {double* markers; } ;


 long VE_BANDS ;
 int VE_MAXSTRETCH ;
 int VE_POST ;
 int VE_WIN ;
 int _analysis_output_always (char*,int,float*,long,int ,int ,int) ;
 int* _ogg_realloc (int*,int) ;
 int _ve_amp (TYPE_4__*,int *,float*,int ,TYPE_8__*) ;
 float* alloca (int) ;
 int fprintf (int ,char*,int,int,int) ;
 int memset (float*,int ,int) ;
 int seq ;
 int sprintf (char*,char*,int) ;
 int stderr ;
 int totalshift ;

long _ve_envelope_search(vorbis_dsp_state *v){
  vorbis_info *vi=v->vi;
  codec_setup_info *ci=vi->codec_setup;
  vorbis_info_psy_global *gi=&ci->psy_g_param;
  envelope_lookup *ve=((private_state *)(v->backend_state))->ve;
  long i,j;

  int first=ve->current/ve->searchstep;
  int last=v->pcm_current/ve->searchstep-VE_WIN;
  if(first<0)first=0;


  if(last+VE_WIN+VE_POST>ve->storage){
    ve->storage=last+VE_WIN+VE_POST;
    ve->mark=_ogg_realloc(ve->mark,ve->storage*sizeof(*ve->mark));
  }

  for(j=first;j<last;j++){
    int ret=0;

    ve->stretch++;
    if(ve->stretch>VE_MAXSTRETCH*2)
      ve->stretch=VE_MAXSTRETCH*2;

    for(i=0;i<ve->ch;i++){
      float *pcm=v->pcm[i]+ve->searchstep*(j);
      ret|=_ve_amp(ve,gi,pcm,ve->band,ve->filter+i*VE_BANDS);
    }

    ve->mark[j+VE_POST]=0;
    if(ret&1){
      ve->mark[j]=1;
      ve->mark[j+1]=1;
    }

    if(ret&2){
      ve->mark[j]=1;
      if(j>0)ve->mark[j-1]=1;
    }

    if(ret&4)ve->stretch=-1;
  }

  ve->current=last*ve->searchstep;

  {
    long centerW=v->centerW;
    long testW=
      centerW+
      ci->blocksizes[v->W]/4+
      ci->blocksizes[1]/2+
      ci->blocksizes[0]/4;

    j=ve->cursor;

    while(j<ve->current-(ve->searchstep)){

      if(j>=testW)return(1);

      ve->cursor=j;

      if(ve->mark[j/ve->searchstep]){
        if(j>centerW){
          ve->curmark=j;
          if(j>=testW)return(1);
          return(0);
        }
      }
      j+=ve->searchstep;
    }
  }

  return(-1);
}
