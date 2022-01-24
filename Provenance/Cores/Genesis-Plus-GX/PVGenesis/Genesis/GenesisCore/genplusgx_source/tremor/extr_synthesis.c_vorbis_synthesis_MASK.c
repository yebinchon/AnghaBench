#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_16__ {int channels; scalar_t__ codec_setup; } ;
typedef  TYPE_2__ vorbis_info ;
struct TYPE_17__ {TYPE_2__* vi; scalar_t__ backend_state; } ;
typedef  TYPE_3__ vorbis_dsp_state ;
struct TYPE_18__ {int mode; int W; int nW; int pcmend; int /*<<< orphan*/ ** pcm; int /*<<< orphan*/  eofflag; scalar_t__ sequence; int /*<<< orphan*/  granulepos; void* lW; int /*<<< orphan*/  opb; TYPE_3__* vd; } ;
typedef  TYPE_4__ vorbis_block ;
struct TYPE_19__ {int modebits; int /*<<< orphan*/ * mode; } ;
typedef  TYPE_5__ private_state ;
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_20__ {int /*<<< orphan*/  e_o_s; scalar_t__ packetno; int /*<<< orphan*/  granulepos; int /*<<< orphan*/  packet; } ;
typedef  TYPE_6__ ogg_packet ;
typedef  int /*<<< orphan*/  ogg_int32_t ;
struct TYPE_21__ {int* blocksizes; int* map_type; TYPE_1__** mode_param; } ;
typedef  TYPE_7__ codec_setup_info ;
struct TYPE_15__ {int blockflag; size_t mapping; } ;
struct TYPE_14__ {int (* inverse ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int OV_EBADPACKET ; 
 int OV_ENOTAUDIO ; 
 TYPE_13__** _mapping_P ; 
 scalar_t__ FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 

int FUNC5(vorbis_block *vb,ogg_packet *op,int decodep){
  vorbis_dsp_state     *vd=vb->vd;
  private_state        *b=(private_state *)vd->backend_state;
  vorbis_info          *vi=vd->vi;
  codec_setup_info     *ci=(codec_setup_info *)vi->codec_setup;
  oggpack_buffer       *opb=&vb->opb;
  int                   type,mode,i;
 
  /* first things first.  Make sure decode is ready */
  FUNC1(vb);
  FUNC3(opb,op->packet);

  /* Check the packet type */
  if(FUNC2(opb,1)!=0){
    /* Oops.  This is not an audio data packet */
    return(OV_ENOTAUDIO);
  }

  /* read our mode and pre/post windowsize */
  mode=FUNC2(opb,b->modebits);
  if(mode==-1)return(OV_EBADPACKET);
  
  vb->mode=mode;
  vb->W=ci->mode_param[mode]->blockflag;
  if(vb->W){
    vb->lW=FUNC2(opb,1);
    vb->nW=FUNC2(opb,1);
    if(vb->nW==-1)   return(OV_EBADPACKET);
  }else{
    vb->lW=0;
    vb->nW=0;
  }
  
  /* more setup */
  vb->granulepos=op->granulepos;
  vb->sequence=op->packetno-3; /* first block is third packet */
  vb->eofflag=op->e_o_s;

  if(decodep){
    /* alloc pcm passback storage */
    vb->pcmend=ci->blocksizes[vb->W];
    vb->pcm=(ogg_int32_t **)FUNC0(vb,sizeof(*vb->pcm)*vi->channels);
    for(i=0;i<vi->channels;i++)
      vb->pcm[i]=(ogg_int32_t *)FUNC0(vb,vb->pcmend*sizeof(*vb->pcm[i]));
    
    /* unpack_header enforces range checking */
    type=ci->map_type[ci->mode_param[mode]->mapping];
    
    return(_mapping_P[type]->inverse(vb,b->mode[mode]));
  }else{
    /* no pcm */
    vb->pcmend=0;
    vb->pcm=NULL;
    
    return(0);
  }
}