#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ogg_page ;
struct TYPE_19__ {int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ ogg_packet ;
typedef  int ogg_int64_t ;
struct TYPE_20__ {int links; int* dataoffsets; int* pcmlengths; int* offsets; int offset; scalar_t__* serialnos; void* vc; void* vi; int /*<<< orphan*/  os; } ;
typedef  TYPE_3__ OggVorbis_File ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,void*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*,TYPE_1__*,int) ; 
 int FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (void*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 long FUNC15 (void*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC16(OggVorbis_File *vf, ogg_int64_t dataoffset){
  ogg_page og={0,0,0,0};
  int i;
  ogg_int64_t ret;
  
  vf->vi=FUNC4(vf->vi,vf->links*sizeof(*vf->vi));
  vf->vc=FUNC4(vf->vc,vf->links*sizeof(*vf->vc));
  vf->dataoffsets=FUNC3(vf->links*sizeof(*vf->dataoffsets));
  vf->pcmlengths=FUNC3(vf->links*2*sizeof(*vf->pcmlengths));
  
  for(i=0;i<vf->links;i++){
    if(i==0){
      /* we already grabbed the initial header earlier.  Just set the offset */
      vf->dataoffsets[i]=dataoffset;
      FUNC5(vf,dataoffset);

    }else{

      /* seek to the location of the initial header */

      FUNC5(vf,vf->offsets[i]);
      if(FUNC0(vf,vf->vi+i,vf->vc+i,NULL,NULL)<0){
    	vf->dataoffsets[i]=-1;
      }else{
	vf->dataoffsets[i]=vf->offset;
      }
    }

    /* fetch beginning PCM offset */

    if(vf->dataoffsets[i]!=-1){
      ogg_int64_t accumulated=0,pos;
      long        lastblock=-1;
      int         result;

      FUNC12(vf->os,vf->serialnos[i]);

      while(1){
	ogg_packet op={0,0,0,0,0,0};

	ret=FUNC1(vf,&og,-1);
	if(ret<0)
	  /* this should not be possible unless the file is
             truncated/mangled */
	  break;
       
	if(FUNC9(&og)!=vf->serialnos[i])
	  break;
	
	pos=FUNC7(&og);

	/* count blocksizes of all frames in the page */
	FUNC11(vf->os,&og);
	while((result=FUNC10(vf->os,&op))){
	  if(result>0){ /* ignore holes */
	    long thisblock=FUNC15(vf->vi+i,&op);
	    if(lastblock!=-1)
	      accumulated+=(lastblock+thisblock)>>2;
	    lastblock=thisblock;
	  }
	}
	FUNC6(&op);

	if(pos!=-1){
	  /* pcm offset of last packet on the first audio page */
	  accumulated= pos-accumulated;
	  break;
	}
      }

      /* less than zero?  This is a stream with samples trimmed off
         the beginning, a normal occurrence; set the offset to zero */
      if(accumulated<0)accumulated=0;

      vf->pcmlengths[i*2]=accumulated;
    }

    /* get the PCM length of this link. To do this,
       get the last page of the stream */
    {
      ogg_int64_t end=vf->offsets[i+1];
      FUNC5(vf,end);

      while(1){
	ret=FUNC2(vf,&og);
	if(ret<0){
	  /* this should not be possible */
	  FUNC14(vf->vi+i);
	  FUNC13(vf->vc+i);
	  break;
	}
	if(FUNC7(&og)!=-1){
	  vf->pcmlengths[i*2+1]=FUNC7(&og)-vf->pcmlengths[i*2];
	  break;
	}
	vf->offset=ret;
      }
    }
  }
  FUNC8(&og);
}