
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_16__ {int channels; scalar_t__ codec_setup; } ;
typedef TYPE_2__ vorbis_info ;
struct TYPE_17__ {TYPE_2__* vi; scalar_t__ backend_state; } ;
typedef TYPE_3__ vorbis_dsp_state ;
struct TYPE_18__ {int mode; int W; int nW; int pcmend; int ** pcm; int eofflag; scalar_t__ sequence; int granulepos; void* lW; int opb; TYPE_3__* vd; } ;
typedef TYPE_4__ vorbis_block ;
struct TYPE_19__ {int modebits; int * mode; } ;
typedef TYPE_5__ private_state ;
typedef int oggpack_buffer ;
struct TYPE_20__ {int e_o_s; scalar_t__ packetno; int granulepos; int packet; } ;
typedef TYPE_6__ ogg_packet ;
typedef int ogg_int32_t ;
struct TYPE_21__ {int* blocksizes; int* map_type; TYPE_1__** mode_param; } ;
typedef TYPE_7__ codec_setup_info ;
struct TYPE_15__ {int blockflag; size_t mapping; } ;
struct TYPE_14__ {int (* inverse ) (TYPE_4__*,int ) ;} ;


 int OV_EBADPACKET ;
 int OV_ENOTAUDIO ;
 TYPE_13__** _mapping_P ;
 scalar_t__ _vorbis_block_alloc (TYPE_4__*,int) ;
 int _vorbis_block_ripcord (TYPE_4__*) ;
 void* oggpack_read (int *,int) ;
 int oggpack_readinit (int *,int ) ;
 int stub1 (TYPE_4__*,int ) ;

int vorbis_synthesis(vorbis_block *vb,ogg_packet *op,int decodep){
  vorbis_dsp_state *vd=vb->vd;
  private_state *b=(private_state *)vd->backend_state;
  vorbis_info *vi=vd->vi;
  codec_setup_info *ci=(codec_setup_info *)vi->codec_setup;
  oggpack_buffer *opb=&vb->opb;
  int type,mode,i;


  _vorbis_block_ripcord(vb);
  oggpack_readinit(opb,op->packet);


  if(oggpack_read(opb,1)!=0){

    return(OV_ENOTAUDIO);
  }


  mode=oggpack_read(opb,b->modebits);
  if(mode==-1)return(OV_EBADPACKET);

  vb->mode=mode;
  vb->W=ci->mode_param[mode]->blockflag;
  if(vb->W){
    vb->lW=oggpack_read(opb,1);
    vb->nW=oggpack_read(opb,1);
    if(vb->nW==-1) return(OV_EBADPACKET);
  }else{
    vb->lW=0;
    vb->nW=0;
  }


  vb->granulepos=op->granulepos;
  vb->sequence=op->packetno-3;
  vb->eofflag=op->e_o_s;

  if(decodep){

    vb->pcmend=ci->blocksizes[vb->W];
    vb->pcm=(ogg_int32_t **)_vorbis_block_alloc(vb,sizeof(*vb->pcm)*vi->channels);
    for(i=0;i<vi->channels;i++)
      vb->pcm[i]=(ogg_int32_t *)_vorbis_block_alloc(vb,vb->pcmend*sizeof(*vb->pcm[i]));


    type=ci->map_type[ci->mode_param[mode]->mapping];

    return(_mapping_P[type]->inverse(vb,b->mode[mode]));
  }else{

    vb->pcmend=0;
    vb->pcm=((void*)0);

    return(0);
  }
}
