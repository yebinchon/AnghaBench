
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int * floor_look; TYPE_1__** floor_func; int * residue_look; TYPE_2__** residue_func; TYPE_4__* map; } ;
typedef TYPE_3__ vorbis_look_mapping0 ;
typedef int vorbis_look_mapping ;
struct TYPE_17__ {int* chmuxlist; int coupling_steps; size_t* coupling_mag; size_t* coupling_ang; int submaps; } ;
typedef TYPE_4__ vorbis_info_mapping0 ;
struct TYPE_18__ {int channels; scalar_t__ codec_setup; } ;
typedef TYPE_5__ vorbis_info ;
struct TYPE_19__ {scalar_t__ backend_state; TYPE_5__* vi; } ;
typedef TYPE_6__ vorbis_dsp_state ;
struct TYPE_20__ {long pcmend; size_t W; int nW; int lW; scalar_t__** pcm; TYPE_6__* vd; } ;
typedef TYPE_7__ vorbis_block ;
struct TYPE_21__ {int window; } ;
typedef TYPE_8__ private_state ;
typedef scalar_t__ ogg_int32_t ;
struct TYPE_22__ {long* blocksizes; } ;
typedef TYPE_9__ codec_setup_info ;
struct TYPE_15__ {int (* inverse ) (TYPE_7__*,int ,scalar_t__**,int*,int) ;} ;
struct TYPE_14__ {int (* inverse2 ) (TYPE_7__*,int ,void*,scalar_t__*) ;void* (* inverse1 ) (TYPE_7__*,int ) ;} ;


 int _vorbis_apply_window (scalar_t__*,int ,long*,int ,size_t,int ) ;
 scalar_t__ alloca (int) ;
 int mdct_backward (long,scalar_t__*,scalar_t__*) ;
 int memset (scalar_t__*,int ,int) ;
 int seq ;
 void* stub1 (TYPE_7__*,int ) ;
 int stub2 (TYPE_7__*,int ,scalar_t__**,int*,int) ;
 int stub3 (TYPE_7__*,int ,void*,scalar_t__*) ;

__attribute__((used)) static int mapping0_inverse(vorbis_block *vb,vorbis_look_mapping *l){
  vorbis_dsp_state *vd=vb->vd;
  vorbis_info *vi=vd->vi;
  codec_setup_info *ci=(codec_setup_info *)vi->codec_setup;
  private_state *b=(private_state *)vd->backend_state;
  vorbis_look_mapping0 *look=(vorbis_look_mapping0 *)l;
  vorbis_info_mapping0 *info=look->map;

  int i,j;
  long n=vb->pcmend=ci->blocksizes[vb->W];

  ogg_int32_t **pcmbundle=(ogg_int32_t **)alloca(sizeof(*pcmbundle)*vi->channels);
  int *zerobundle=(int *)alloca(sizeof(*zerobundle)*vi->channels);

  int *nonzero =(int *)alloca(sizeof(*nonzero)*vi->channels);
  void **floormemo=(void **)alloca(sizeof(*floormemo)*vi->channels);







  for(i=0;i<vi->channels;i++){
    int submap=info->chmuxlist[i];
    floormemo[i]=look->floor_func[submap]->
      inverse1(vb,look->floor_look[submap]);
    if(floormemo[i])
      nonzero[i]=1;
    else
      nonzero[i]=0;
    memset(vb->pcm[i],0,sizeof(*vb->pcm[i])*n/2);
  }


  for(i=0;i<info->coupling_steps;i++){
    if(nonzero[info->coupling_mag[i]] ||
       nonzero[info->coupling_ang[i]]){
      nonzero[info->coupling_mag[i]]=1;
      nonzero[info->coupling_ang[i]]=1;
    }
  }


  for(i=0;i<info->submaps;i++){
    int ch_in_bundle=0;
    for(j=0;j<vi->channels;j++){
      if(info->chmuxlist[j]==i){
 if(nonzero[j])
   zerobundle[ch_in_bundle]=1;
 else
   zerobundle[ch_in_bundle]=0;
 pcmbundle[ch_in_bundle++]=vb->pcm[j];
      }
    }

    look->residue_func[i]->inverse(vb,look->residue_look[i],
       pcmbundle,zerobundle,ch_in_bundle);
  }


  for(i=info->coupling_steps-1;i>=0;i--){
    ogg_int32_t *pcmM=vb->pcm[info->coupling_mag[i]];
    ogg_int32_t *pcmA=vb->pcm[info->coupling_ang[i]];

    for(j=0;j<n/2;j++){
      ogg_int32_t mag=pcmM[j];
      ogg_int32_t ang=pcmA[j];

      if(mag>0)
 if(ang>0){
   pcmM[j]=mag;
   pcmA[j]=mag-ang;
 }else{
   pcmA[j]=mag;
   pcmM[j]=mag+ang;
 }
      else
 if(ang>0){
   pcmM[j]=mag;
   pcmA[j]=mag+ang;
 }else{
   pcmA[j]=mag;
   pcmM[j]=mag-ang;
 }
    }
  }


  for(i=0;i<vi->channels;i++){
    ogg_int32_t *pcm=vb->pcm[i];
    int submap=info->chmuxlist[i];
    look->floor_func[submap]->
      inverse2(vb,look->floor_look[submap],floormemo[i],pcm);
  }



  for(i=0;i<vi->channels;i++){
    ogg_int32_t *pcm=vb->pcm[i];
    mdct_backward(n,pcm,pcm);
  }


  for(i=0;i<vi->channels;i++){
    ogg_int32_t *pcm=vb->pcm[i];
    if(nonzero[i])
      _vorbis_apply_window(pcm,b->window,ci->blocksizes,vb->lW,vb->W,vb->nW);
    else
      for(j=0;j<n;j++)
 pcm[j]=0;

  }

  seq+=vi->channels;

  return(0);
}
