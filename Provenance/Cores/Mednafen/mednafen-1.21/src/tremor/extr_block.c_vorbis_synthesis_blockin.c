
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int channels; scalar_t__ codec_setup; } ;
typedef TYPE_1__ vorbis_info ;
struct TYPE_9__ {int pcm_current; int pcm_returned; size_t lW; size_t W; int nW; int sequence; int granulepos; int centerW; int eofflag; scalar_t__** pcm; TYPE_4__* backend_state; TYPE_1__* vi; } ;
typedef TYPE_2__ vorbis_dsp_state ;
struct TYPE_10__ {size_t W; int sequence; int granulepos; scalar_t__ eofflag; scalar_t__** pcm; } ;
typedef TYPE_3__ vorbis_block ;
struct TYPE_11__ {int sample_count; } ;
typedef TYPE_4__ private_state ;
typedef scalar_t__ ogg_int32_t ;
struct TYPE_12__ {int* blocksizes; } ;
typedef TYPE_5__ codec_setup_info ;


 int OV_EINVAL ;

int vorbis_synthesis_blockin(vorbis_dsp_state *v,vorbis_block *vb){
  vorbis_info *vi=v->vi;
  codec_setup_info *ci=(codec_setup_info *)vi->codec_setup;
  private_state *b=v->backend_state;
  int i,j;

  if(v->pcm_current>v->pcm_returned && v->pcm_returned!=-1)return(OV_EINVAL);

  v->lW=v->W;
  v->W=vb->W;
  v->nW=-1;

  if((v->sequence==-1)||
     (v->sequence+1 != vb->sequence)){
    v->granulepos=-1;
    b->sample_count=-1;
  }

  v->sequence=vb->sequence;

  if(vb->pcm){

    int n=ci->blocksizes[v->W]/2;
    int n0=ci->blocksizes[0]/2;
    int n1=ci->blocksizes[1]/2;

    int thisCenter;
    int prevCenter;

    if(v->centerW){
      thisCenter=n1;
      prevCenter=0;
    }else{
      thisCenter=0;
      prevCenter=n1;
    }







    for(j=0;j<vi->channels;j++){

      if(v->lW){
 if(v->W){

   ogg_int32_t *pcm=v->pcm[j]+prevCenter;
   ogg_int32_t *p=vb->pcm[j];
   for(i=0;i<n1;i++)
     pcm[i]+=p[i];
 }else{

   ogg_int32_t *pcm=v->pcm[j]+prevCenter+n1/2-n0/2;
   ogg_int32_t *p=vb->pcm[j];
   for(i=0;i<n0;i++)
     pcm[i]+=p[i];
 }
      }else{
 if(v->W){

   ogg_int32_t *pcm=v->pcm[j]+prevCenter;
   ogg_int32_t *p=vb->pcm[j]+n1/2-n0/2;
   for(i=0;i<n0;i++)
     pcm[i]+=p[i];
   for(;i<n1/2+n0/2;i++)
     pcm[i]=p[i];
 }else{

   ogg_int32_t *pcm=v->pcm[j]+prevCenter;
   ogg_int32_t *p=vb->pcm[j];
   for(i=0;i<n0;i++)
     pcm[i]+=p[i];
 }
      }


      {
 ogg_int32_t *pcm=v->pcm[j]+thisCenter;
 ogg_int32_t *p=vb->pcm[j]+n;
 for(i=0;i<n;i++)
   pcm[i]=p[i];
      }
    }

    if(v->centerW)
      v->centerW=0;
    else
      v->centerW=n1;





    if(v->pcm_returned==-1){
      v->pcm_returned=thisCenter;
      v->pcm_current=thisCenter;
    }else{
      v->pcm_returned=prevCenter;
      v->pcm_current=prevCenter+
 ci->blocksizes[v->lW]/4+
 ci->blocksizes[v->W]/4;
    }

  }
  if(b->sample_count==-1){
    b->sample_count=0;
  }else{
    b->sample_count+=ci->blocksizes[v->lW]/4+ci->blocksizes[v->W]/4;
  }

  if(v->granulepos==-1){
    if(vb->granulepos!=-1){

      v->granulepos=vb->granulepos;


      if(b->sample_count>v->granulepos){


 long extra=b->sample_count-vb->granulepos;





        if(extra<0)
          extra=0;

 if(vb->eofflag){
          if(extra > v->pcm_current - v->pcm_returned)
            extra = v->pcm_current - v->pcm_returned;

   v->pcm_current-=extra;
 }else{

   v->pcm_returned+=extra;
   if(v->pcm_returned>v->pcm_current)
     v->pcm_returned=v->pcm_current;
 }

      }

    }
  }else{
    v->granulepos+=ci->blocksizes[v->lW]/4+ci->blocksizes[v->W]/4;
    if(vb->granulepos!=-1 && v->granulepos!=vb->granulepos){

      if(v->granulepos>vb->granulepos){
 long extra=v->granulepos-vb->granulepos;

 if(extra)
   if(vb->eofflag){





            if(extra > v->pcm_current - v->pcm_returned)
              extra = v->pcm_current - v->pcm_returned;





            if(extra<0)
              extra=0;

            v->pcm_current-=extra;

   }

      }

      v->granulepos=vb->granulepos;
    }
  }



  if(vb->eofflag)v->eofflag=1;
  return(0);
}
