#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ogg_page ;
struct TYPE_11__ {int granulepos; } ;
typedef  TYPE_1__ ogg_packet ;
typedef  scalar_t__ ogg_int64_t ;
struct TYPE_12__ {scalar_t__ ready_state; int links; scalar_t__* pcmlengths; scalar_t__* offsets; scalar_t__* dataoffsets; scalar_t__ offset; scalar_t__* serialnos; int pcm_offset; int current_link; scalar_t__ current_serialno; scalar_t__ samptrack; scalar_t__ bittrack; int /*<<< orphan*/  os; int /*<<< orphan*/  vd; int /*<<< orphan*/  seekable; } ;
typedef  TYPE_2__ OggVorbis_File ;

/* Variables and functions */
 scalar_t__ CHUNKSIZE ; 
 scalar_t__ OPENED ; 
 scalar_t__ OV_EBADPACKET ; 
 scalar_t__ OV_EFAULT ; 
 int OV_EINVAL ; 
 int OV_ENOSEEK ; 
 scalar_t__ OV_EREAD ; 
 void* STREAMSET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int) ; 
 int FUNC12 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(OggVorbis_File *vf,ogg_int64_t pos){
  int link=-1;
  ogg_int64_t result=0;
  ogg_int64_t total=FUNC11(vf,-1);

  if(vf->ready_state<OPENED)return(OV_EINVAL);
  if(!vf->seekable)return(OV_ENOSEEK);

  if(pos<0 || pos>total)return(OV_EINVAL);

  /* which bitstream section does this pcm offset occur in? */
  for(link=vf->links-1;link>=0;link--){
    total-=vf->pcmlengths[link*2+1];
    if(pos>=total)break;
  }

  /* Search within the logical bitstream for the page with the highest
     pcm_pos preceding pos.  If we're looking for a position on the
     first page, bisection will halt without finding our position as
     it's before the first explicit granulepos fencepost. That case is
     handled separately below.

     There is a danger here; missing pages or incorrect frame number
     information in the bitstream could make our task impossible.
     Account for that (it would be an error condition) */

  /* new search algorithm originally by HB (Nicholas Vinen) */

  {
    ogg_int64_t end=vf->offsets[link+1];
    ogg_int64_t begin=vf->dataoffsets[link];
    ogg_int64_t begintime = vf->pcmlengths[link*2];
    ogg_int64_t endtime = vf->pcmlengths[link*2+1]+begintime;
    ogg_int64_t target=pos-total+begintime;
    ogg_int64_t best=-1;
    int         got_page=0;

    ogg_page og;

    /* if we have only one page, there will be no bisection.  Grab the page here */
    if(begin==end){
      result=FUNC3(vf,begin);
      if(result) goto seek_error;

      result=FUNC1(vf,&og,1);
      if(result<0) goto seek_error;

      got_page=1;
    }

    /* bisection loop */
    while(begin<end){
      ogg_int64_t bisect;

      if(end-begin<CHUNKSIZE){
        bisect=begin;
      }else{
        /* take a (pretty decent) guess. */
        bisect=begin + FUNC13(target-begintime,
				 endtime-begintime,
				 end-begin) - CHUNKSIZE;
        if(bisect<begin+CHUNKSIZE)
          bisect=begin;
      }

      result=FUNC3(vf,bisect);
      if(result) goto seek_error;

      /* read loop within the bisection loop */
      while(begin<end){
        result=FUNC1(vf,&og,end-vf->offset);
        if(result==OV_EREAD) goto seek_error;
        if(result<0){
          /* there is no next page! */
          if(bisect<=begin+1)
            /* No bisection left to perform.  We've either found the
               best candidate already or failed. Exit loop. */
            end=begin;
          else{
            /* We tried to load a fraction of the last page; back up a
               bit and try to get the whole last page */
            if(bisect==0) goto seek_error;
            bisect-=CHUNKSIZE;

            /* don't repeat/loop on a read we've already performed */
            if(bisect<=begin)bisect=begin+1;

            /* seek and continue bisection */
            result=FUNC3(vf,bisect);
            if(result) goto seek_error;
          }
        }else{
          ogg_int64_t granulepos;
          got_page=1;

          /* got a page. analyze it */
          /* only consider pages from primary vorbis stream */
          if(FUNC6(&og)!=vf->serialnos[link])
            continue;

          /* only consider pages with the granulepos set */
          granulepos=FUNC5(&og);
          if(granulepos==-1)continue;

          if(granulepos<target){
            /* this page is a successful candidate! Set state */

            best=result;  /* raw offset of packet with granulepos */
            begin=vf->offset; /* raw offset of next page */
            begintime=granulepos;

            /* if we're before our target but within a short distance,
               don't bisect; read forward */
            if(target-begintime>44100)break;

            bisect=begin; /* *not* begin + 1 as above */
          }else{

            /* This is one of our pages, but the granpos is
               post-target; it is not a bisection return
               candidate. (The only way we'd use it is if it's the
               first page in the stream; we handle that case later
               outside the bisection) */
            if(bisect<=begin+1){
              /* No bisection left to perform.  We've either found the
                 best candidate already or failed. Exit loop. */
              end=begin;
            }else{
              if(end==vf->offset){
                /* bisection read to the end; use the known page
                   boundary (result) to update bisection, back up a
                   little bit, and try again */
                end=result;
                bisect-=CHUNKSIZE;
                if(bisect<=begin)bisect=begin+1;
                result=FUNC3(vf,bisect);
                if(result) goto seek_error;
              }else{
                /* Normal bisection */
                end=bisect;
                endtime=granulepos;
                break;
              }
            }
          }
        }
      }
    }

    /* Out of bisection: did it 'fail?' */
    if(best == -1){

      /* Check the 'looking for data in first page' special case;
         bisection would 'fail' because our search target was before the
         first PCM granule position fencepost. */

      if(got_page &&
         begin == vf->dataoffsets[link] &&
         FUNC6(&og)==vf->serialnos[link]){

        /* Yes, this is the beginning-of-stream case. We already have
           our page, right at the beginning of PCM data.  Set state
           and return. */

        vf->pcm_offset=total;

        if(link!=vf->current_link){
          /* Different link; dump entire decode machine */
          FUNC0(vf);

          vf->current_link=link;
          vf->current_serialno=vf->serialnos[link];
          vf->ready_state=STREAMSET;

        }else{
          FUNC14(&vf->vd);
        }

        FUNC10(&vf->os,vf->current_serialno);
        FUNC9(&vf->os,&og);

      }else
        goto seek_error;

    }else{

      /* Bisection found our page. seek to it, update pcm offset. Easier case than
         raw_seek, don't keep packets preceding granulepos. */

      ogg_page og;
      ogg_packet op;

      /* seek */
      result=FUNC3(vf,best);
      vf->pcm_offset=-1;
      if(result) goto seek_error;
      result=FUNC1(vf,&og,-1);
      if(result<0) goto seek_error;

      if(link!=vf->current_link){
        /* Different link; dump entire decode machine */
        FUNC0(vf);

        vf->current_link=link;
        vf->current_serialno=vf->serialnos[link];
        vf->ready_state=STREAMSET;

      }else{
        FUNC14(&vf->vd);
      }

      FUNC10(&vf->os,vf->current_serialno);
      FUNC9(&vf->os,&og);

      /* pull out all but last packet; the one with granulepos */
      while(1){
        result=FUNC8(&vf->os,&op);
        if(result==0){
          /* No packet returned; we exited the bisection with 'best'
             pointing to a page with a granule position, so the packet
             finishing this page ('best') originated on a preceding
             page. Keep fetching previous pages until we get one with
             a granulepos or without the 'continued' flag set.  Then
             just use raw_seek for simplicity. */
          /* Do not rewind past the beginning of link data; if we do,
             it's either a bug or a broken stream */
          result=best;
          while(result>vf->dataoffsets[link]){
            result=FUNC2(vf,result,&og);
            if(result<0) goto seek_error;
            if(FUNC6(&og)==vf->current_serialno &&
               (FUNC5(&og)>-1 ||
                !FUNC4(&og))){
              return FUNC12(vf,result);
            }
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
          result=FUNC7(&vf->os,NULL);
      }
    }
  }

  /* verify result */
  if(vf->pcm_offset>pos || pos>FUNC11(vf,-1)){
    result=OV_EFAULT;
    goto seek_error;
  }
  vf->bittrack=0;
  vf->samptrack=0;
  return(0);

 seek_error:
  /* dump machine so we're in a known state */
  vf->pcm_offset=-1;
  FUNC0(vf);
  return (int)result;
}