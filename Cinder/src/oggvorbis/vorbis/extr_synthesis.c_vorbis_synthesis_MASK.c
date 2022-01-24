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
struct TYPE_16__ {int channels; TYPE_7__* codec_setup; } ;
typedef  TYPE_2__ vorbis_info ;
struct TYPE_17__ {TYPE_2__* vi; TYPE_5__* backend_state; } ;
typedef  TYPE_3__ vorbis_dsp_state ;
struct TYPE_18__ {int mode; int W; int nW; int pcmend; void** pcm; int /*<<< orphan*/  eofflag; int /*<<< orphan*/  sequence; int /*<<< orphan*/  granulepos; void* lW; int /*<<< orphan*/  opb; TYPE_3__* vd; } ;
typedef  TYPE_4__ vorbis_block ;
struct TYPE_19__ {int modebits; } ;
typedef  TYPE_5__ private_state ;
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_20__ {int /*<<< orphan*/  e_o_s; int /*<<< orphan*/  packetno; int /*<<< orphan*/  granulepos; int /*<<< orphan*/  bytes; int /*<<< orphan*/  packet; } ;
typedef  TYPE_6__ ogg_packet ;
struct TYPE_21__ {int* blocksizes; int* map_type; TYPE_1__** mode_param; int /*<<< orphan*/ * map_param; } ;
typedef  TYPE_7__ codec_setup_info ;
struct TYPE_15__ {int blockflag; size_t mapping; } ;
struct TYPE_14__ {int (* inverse ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int OV_EBADPACKET ; 
 int OV_ENOTAUDIO ; 
 TYPE_13__** _mapping_P ; 
 void* FUNC0 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 

int FUNC5(vorbis_block *vb,ogg_packet *op){
  vorbis_dsp_state     *vd= vb ? vb->vd : 0;
  private_state        *b= vd ? vd->backend_state : 0;
  vorbis_info          *vi= vd ? vd->vi : 0;
  codec_setup_info     *ci= vi ? vi->codec_setup : 0;
  oggpack_buffer       *opb=vb ? &vb->opb : 0;
  int                   type,mode,i;

  if (!vd || !b || !vi || !ci || !opb) {
    return OV_EBADPACKET;
  }

  /* first things first.  Make sure decode is ready */
  FUNC1(vb);
  FUNC3(opb,op->packet,op->bytes);

  /* Check the packet type */
  if(FUNC2(opb,1)!=0){
    /* Oops.  This is not an audio data packet */
    return(OV_ENOTAUDIO);
  }

  /* read our mode and pre/post windowsize */
  mode=FUNC2(opb,b->modebits);
  if(mode==-1){
    return(OV_EBADPACKET);
  }

  vb->mode=mode;
  if(!ci->mode_param[mode]){
    return(OV_EBADPACKET);
  }

  vb->W=ci->mode_param[mode]->blockflag;
  if(vb->W){

    /* this doesn;t get mapped through mode selection as it's used
       only for window selection */
    vb->lW=FUNC2(opb,1);
    vb->nW=FUNC2(opb,1);
    if(vb->nW==-1){
      return(OV_EBADPACKET);
    }
  }else{
    vb->lW=0;
    vb->nW=0;
  }

  /* more setup */
  vb->granulepos=op->granulepos;
  vb->sequence=op->packetno;
  vb->eofflag=op->e_o_s;

  /* alloc pcm passback storage */
  vb->pcmend=ci->blocksizes[vb->W];
  vb->pcm=FUNC0(vb,sizeof(*vb->pcm)*vi->channels);
  for(i=0;i<vi->channels;i++)
    vb->pcm[i]=FUNC0(vb,vb->pcmend*sizeof(*vb->pcm[i]));

  /* unpack_header enforces range checking */
  type=ci->map_type[ci->mode_param[mode]->mapping];

  return(_mapping_P[type]->inverse(vb,ci->map_param[ci->mode_param[mode]->
                                                   mapping]));
}