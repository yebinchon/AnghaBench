#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ogg_uint32_t ;
typedef  int /*<<< orphan*/  ogg_page ;
struct TYPE_13__ {int granulepos; } ;
typedef  TYPE_1__ ogg_packet ;
typedef  scalar_t__ ogg_int64_t ;
struct TYPE_14__ {int current_link; scalar_t__ pcm_offset; scalar_t__* pcmlengths; scalar_t__ ready_state; int links; scalar_t__* serialnos; int /*<<< orphan*/  vd; scalar_t__ samptrack; scalar_t__ bittrack; int /*<<< orphan*/  os; void* current_serialno; int /*<<< orphan*/  vb; scalar_t__ vi; } ;
typedef  TYPE_2__ OggVorbis_File ;

/* Variables and functions */
 int OV_HOLE ; 
 scalar_t__ STREAMSET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC10 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int) ; 
 int FUNC12 (scalar_t__,int) ; 
 int FUNC13 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC18(OggVorbis_File *vf,ogg_int64_t pos){
  int thisblock,lastblock=0;
  int ret=FUNC10(vf,pos);
  if(ret<0)return(ret);
  if((ret=FUNC3(vf)))return ret;

  /* discard leading packets we don't need for the lapping of the
     position we want; don't decode them */

  while(1){
    ogg_packet op;
    ogg_page og;

    int ret=FUNC7(&vf->os,&op);
    if(ret>0){
      thisblock=FUNC13(vf->vi+vf->current_link,&op);
      if(thisblock<0){
        FUNC6(&vf->os,NULL);
        continue; /* non audio packet */
      }
      if(lastblock)vf->pcm_offset+=(lastblock+thisblock)>>2;

      if(vf->pcm_offset+((thisblock+
                          FUNC12(vf->vi,1))>>2)>=pos)break;

      /* remove the packet from packet queue and track its granulepos */
      FUNC6(&vf->os,NULL);
      FUNC17(&vf->vb,&op);  /* set up a vb with
                                                   only tracking, no
                                                   pcm_decode */
      FUNC14(&vf->vd,&vf->vb);

      /* end of logical stream case is hard, especially with exact
         length positioning. */

      if(op.granulepos>-1){
        int i;
        /* always believe the stream markers */
        vf->pcm_offset=op.granulepos-vf->pcmlengths[vf->current_link*2];
        if(vf->pcm_offset<0)vf->pcm_offset=0;
        for(i=0;i<vf->current_link;i++)
          vf->pcm_offset+=vf->pcmlengths[i*2+1];
      }

      lastblock=thisblock;

    }else{
      if(ret<0 && ret!=OV_HOLE)break;

      /* suck in a new page */
      if(FUNC2(vf,&og,-1)<0)break;
      if(FUNC4(&og))FUNC0(vf);

      if(vf->ready_state<STREAMSET){
        ogg_uint32_t serialno=FUNC5(&og);
        int link;

        for(link=0;link<vf->links;link++)
          if(vf->serialnos[link]==serialno)break;
        if(link==vf->links) continue;
        vf->current_link=link;

        vf->ready_state=STREAMSET;
        vf->current_serialno=FUNC5(&og);
        FUNC9(&vf->os,serialno);
        ret=FUNC3(vf);
        if(ret)return ret;
        lastblock=0;
      }

      FUNC8(&vf->os,&og);
    }
  }

  vf->bittrack=0;
  vf->samptrack=0;
  /* discard samples until we reach the desired position. Crossing a
     logical bitstream boundary with abandon is OK. */
  while(vf->pcm_offset<pos){
    ogg_int64_t target=pos-vf->pcm_offset;
    long samples=FUNC15(&vf->vd,NULL);

    if(samples>target)samples=target;
    FUNC16(&vf->vd,samples);
    vf->pcm_offset+=samples;

    if(samples<target)
      if(FUNC1(vf,NULL,1,1)<=0)
        vf->pcm_offset=FUNC11(vf,-1); /* eof */
  }
  return 0;
}