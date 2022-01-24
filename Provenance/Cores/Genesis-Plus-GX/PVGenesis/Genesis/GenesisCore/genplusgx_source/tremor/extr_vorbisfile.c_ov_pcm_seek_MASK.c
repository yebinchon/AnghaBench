#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ogg_page ;
struct TYPE_20__ {int granulepos; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ ogg_packet ;
typedef  long ogg_int64_t ;
struct TYPE_21__ {int current_link; long pcm_offset; long* pcmlengths; scalar_t__ current_serialno; scalar_t__ ready_state; int links; scalar_t__* serialnos; int /*<<< orphan*/  vd; scalar_t__ samptrack; scalar_t__ bittrack; int /*<<< orphan*/  os; int /*<<< orphan*/  vb; scalar_t__ vi; } ;
typedef  TYPE_3__ OggVorbis_File ;

/* Variables and functions */
 int OV_EBADLINK ; 
 int OV_HOLE ; 
 scalar_t__ STREAMSET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int,int) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC11 (TYPE_3__*,long) ; 
 long FUNC12 (TYPE_3__*,int) ; 
 int FUNC13 (scalar_t__,int) ; 
 int FUNC14 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 long FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,long) ; 

int FUNC19(OggVorbis_File *vf,ogg_int64_t pos){
  ogg_packet op={0,0,0,0,0,0};
  ogg_page og={0,0,0,0};
  int thisblock,lastblock=0;
  int ret=FUNC11(vf,pos);
  if(ret<0)return(ret);
  FUNC3(vf);

  /* discard leading packets we don't need for the lapping of the
     position we want; don't decode them */

  while(1){

    int ret=FUNC8(vf->os,&op);
    if(ret>0){
      thisblock=FUNC14(vf->vi+vf->current_link,&op);
      if(thisblock<0){
	FUNC7(vf->os,NULL);
	continue; /* non audio packet */
      }
      if(lastblock)vf->pcm_offset+=(lastblock+thisblock)>>2;
      
      if(vf->pcm_offset+((thisblock+
			  FUNC13(vf->vi,1))>>2)>=pos)break;
      
      /* remove the packet from packet queue and track its granulepos */
      FUNC7(vf->os,NULL);
      FUNC15(&vf->vb,&op,0);  /* set up a vb with
					   only tracking, no
					   pcm_decode */
      FUNC16(&vf->vd,&vf->vb); 
      
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
      if(vf->current_serialno!=FUNC6(&og))FUNC0(vf);
      
      if(vf->ready_state<STREAMSET){
	int link;
	
	vf->current_serialno=FUNC6(&og);
	for(link=0;link<vf->links;link++)
	  if(vf->serialnos[link]==vf->current_serialno)break;
	if(link==vf->links){
	  FUNC5(&og);
	  FUNC4(&op);
	  return(OV_EBADLINK);
	}
	vf->current_link=link;
	
	FUNC10(vf->os,vf->current_serialno); 
	vf->ready_state=STREAMSET;      
	FUNC3(vf);
	lastblock=0;
      }

      FUNC9(vf->os,&og);
    }
  }

  vf->bittrack=0;
  vf->samptrack=0;
  /* discard samples until we reach the desired position. Crossing a
     logical bitstream boundary with abandon is OK. */
  while(vf->pcm_offset<pos){
    ogg_int64_t target=pos-vf->pcm_offset;
    long samples=FUNC17(&vf->vd,NULL);

    if(samples>target)samples=target;
    FUNC18(&vf->vd,samples);
    vf->pcm_offset+=samples;
    
    if(samples<target)
      if(FUNC1(vf,1,1)<=0)
	vf->pcm_offset=FUNC12(vf,-1); /* eof */
  }

  FUNC5(&og);
  FUNC4(&op);
  return 0;
}