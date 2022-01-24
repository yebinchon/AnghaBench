#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ogg_page ;
struct TYPE_21__ {int granulepos; int /*<<< orphan*/  member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ ogg_packet ;
typedef  scalar_t__ ogg_int64_t ;
struct TYPE_22__ {scalar_t__ ready_state; int links; scalar_t__* pcmlengths; scalar_t__* offsets; scalar_t__ offset; int pcm_offset; int current_link; scalar_t__ samptrack; scalar_t__ bittrack; int /*<<< orphan*/  os; int /*<<< orphan*/  current_serialno; int /*<<< orphan*/  vd; int /*<<< orphan*/  seekable; } ;
typedef  TYPE_3__ OggVorbis_File ;

/* Variables and functions */
 scalar_t__ CHUNKSIZE ; 
 scalar_t__ OPENED ; 
 scalar_t__ OV_EBADPACKET ; 
 scalar_t__ OV_EFAULT ; 
 int OV_EINVAL ; 
 int OV_ENOSEEK ; 
 int OV_EOF ; 
 scalar_t__ OV_EREAD ; 
 scalar_t__ STREAMSET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int) ; 
 int FUNC14 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(OggVorbis_File *vf,ogg_int64_t pos){
  int link=-1;
  ogg_int64_t result=0;
  ogg_int64_t total=FUNC13(vf,-1);
  ogg_page og={0,0,0,0};
  ogg_packet op={0,0,0,0,0,0};

  if(vf->ready_state<OPENED)return(OV_EINVAL);
  if(!vf->seekable)return(OV_ENOSEEK);
  if(pos<0 || pos>total)return(OV_EINVAL);
 
  /* which bitstream section does this pcm offset occur in? */
  for(link=vf->links-1;link>=0;link--){
    total-=vf->pcmlengths[link*2+1];
    if(pos>=total)break;
  }

  /* search within the logical bitstream for the page with the highest
     pcm_pos preceeding (or equal to) pos.  There is a danger here;
     missing pages or incorrect frame number information in the
     bitstream could make our task impossible.  Account for that (it
     would be an error condition) */

  /* new search algorithm by HB (Nicholas Vinen) */
  {
    ogg_int64_t end=vf->offsets[link+1];
    ogg_int64_t begin=vf->offsets[link];
    ogg_int64_t begintime = vf->pcmlengths[link*2];
    ogg_int64_t endtime = vf->pcmlengths[link*2+1]+begintime;
    ogg_int64_t target=pos-total+begintime;
    ogg_int64_t best=begin;
    
    while(begin<end){
      ogg_int64_t bisect;
      
      if(end-begin<CHUNKSIZE){
	bisect=begin;
      }else{
	/* take a (pretty decent) guess. */
	bisect=begin + 
	  (target-begintime)*(end-begin)/(endtime-begintime) - CHUNKSIZE;
	if(bisect<=begin)
	  bisect=begin+1;
      }
      
      FUNC3(vf,bisect);
    
      while(begin<end){
	result=FUNC1(vf,&og,end-vf->offset);
	if(result==OV_EREAD) goto seek_error;
	if(result<0){
	  if(bisect<=begin+1)
	    end=begin; /* found it */
	  else{
	    if(bisect==0) goto seek_error;
	    bisect-=CHUNKSIZE;
	    if(bisect<=begin)bisect=begin+1;
	    FUNC3(vf,bisect);
	  }
	}else{
	  ogg_int64_t granulepos=FUNC6(&og);
	  if(granulepos==-1)continue;
	  if(granulepos<target){
	    best=result;  /* raw offset of packet with granulepos */ 
	    begin=vf->offset; /* raw offset of next page */
	    begintime=granulepos;
	    
	    if(target-begintime>44100)break;
	    bisect=begin; /* *not* begin + 1 */
	  }else{
	    if(bisect<=begin+1)
	      end=begin;  /* found it */
	    else{
	      if(end==vf->offset){ /* we're pretty close - we'd be stuck in */
		end=result;
		bisect-=CHUNKSIZE; /* an endless loop otherwise. */
		if(bisect<=begin)bisect=begin+1;
		FUNC3(vf,bisect);
	      }else{
		end=result;
		endtime=granulepos;
		break;
	      }
	    }
	  }
	}
      }
    }

    /* found our page. seek to it, update pcm offset. Easier case than
       raw_seek, don't keep packets preceeding granulepos. */
    {
      
      /* seek */
      FUNC3(vf,best);
      vf->pcm_offset=-1;
      
      if(FUNC1(vf,&og,-1)<0){
	FUNC7(&og);
	return(OV_EOF); /* shouldn't happen */
      }

      if(link!=vf->current_link){
	/* Different link; dump entire decode machine */
	FUNC0(vf);  
	
	vf->current_link=link;
	vf->current_serialno=FUNC8(&og);
	vf->ready_state=STREAMSET;
	
      }else{
	FUNC15(&vf->vd);
      }

      FUNC12(vf->os,vf->current_serialno);
      FUNC11(vf->os,&og);

      /* pull out all but last packet; the one with granulepos */
      while(1){
	result=FUNC10(vf->os,&op);
	if(result==0){
	  /* !!! the packet finishing this page originated on a
             preceeding page. Keep fetching previous pages until we
             get one with a granulepos or without the 'continued' flag
             set.  Then just use raw_seek for simplicity. */
	  
	  FUNC3(vf,best);
	  
	  while(1){
	    result=FUNC2(vf,&og);
	    if(result<0) goto seek_error;
	    if(FUNC6(&og)>-1 ||
	       !FUNC5(&og)){
	      return FUNC14(vf,result);
	    }
	    vf->offset=result;
	  }
	}
	if(result<0){
	  result = OV_EBADPACKET; 
	  goto seek_error;
	}
	if(op.granulepos!=-1){
	  vf->pcm_offset=op.granulepos-vf->pcmlengths[vf->current_link*2];
	  if(vf->pcm_offset<0)vf->pcm_offset=0;
	  vf->pcm_offset+=total;
	  break;
	}else
	  result=FUNC9(vf->os,NULL);
      }
    }
  }
  
  /* verify result */
  if(vf->pcm_offset>pos || pos>FUNC13(vf,-1)){
    result=OV_EFAULT;
    goto seek_error;
  }
  vf->bittrack=0;
  vf->samptrack=0;

  FUNC7(&og);
  FUNC4(&op);
  return(0);
  
 seek_error:

  FUNC7(&og);
  FUNC4(&op);

  /* dump machine so we're in a known state */
  vf->pcm_offset=-1;
  FUNC0(vf);
  return (int)result;
}