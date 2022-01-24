#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ogg_stream_state ;
typedef  int /*<<< orphan*/  ogg_page ;
struct TYPE_11__ {int granulepos; } ;
typedef  TYPE_1__ ogg_packet ;
typedef  scalar_t__ ogg_int64_t ;
struct TYPE_13__ {scalar_t__ codec_setup; } ;
struct TYPE_12__ {scalar_t__ ready_state; scalar_t__ end; scalar_t__* offsets; size_t current_link; int pcm_offset; long current_serialno; scalar_t__* pcmlengths; int links; long* serialnos; scalar_t__* dataoffsets; float bittrack; float samptrack; int /*<<< orphan*/  os; TYPE_3__* vi; int /*<<< orphan*/  vd; int /*<<< orphan*/  seekable; } ;
typedef  TYPE_2__ OggVorbis_File ;

/* Variables and functions */
 scalar_t__ OPENED ; 
 int OV_EBADLINK ; 
 int OV_EINVAL ; 
 int OV_ENOSEEK ; 
 scalar_t__ STREAMSET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,long) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,long) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int) ; 
 int FUNC13 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(OggVorbis_File *vf,ogg_int64_t pos){
  ogg_stream_state work_os;
  int ret;

  if(vf->ready_state<OPENED)return(OV_EINVAL);
  if(!vf->seekable)
    return(OV_ENOSEEK); /* don't dump machine if we can't seek */

  if(pos<0 || pos>vf->end)return(OV_EINVAL);

  /* is the seek position outside our current link [if any]? */
  if(vf->ready_state>=STREAMSET){
    if(pos<vf->offsets[vf->current_link] || pos>=vf->offsets[vf->current_link+1])
      FUNC0(vf); /* clear out stream state */
  }

  /* don't yet clear out decoding machine (if it's initialized), in
     the case we're in the same link.  Restart the decode lapping, and
     let _fetch_and_process_packet deal with a potential bitstream
     boundary */
  vf->pcm_offset=-1;
  FUNC11(&vf->os,
                            vf->current_serialno); /* must set serialno */
  FUNC14(&vf->vd);

  ret=FUNC2(vf,pos);
  if(ret)goto seek_error;

  /* we need to make sure the pcm_offset is set, but we don't want to
     advance the raw cursor past good packets just to get to the first
     with a granulepos.  That's not equivalent behavior to beginning
     decoding as immediately after the seek position as possible.

     So, a hack.  We use two stream states; a local scratch state and
     the shared vf->os stream state.  We use the local state to
     scan, and the shared state as a buffer for later decode.

     Unfortuantely, on the last page we still advance to last packet
     because the granulepos on the last page is not necessarily on a
     packet boundary, and we need to make sure the granpos is
     correct.
  */

  {
    ogg_page og;
    ogg_packet op;
    int lastblock=0;
    int accblock=0;
    int thisblock=0;
    int lastflag=0;
    int firstflag=0;
    ogg_int64_t pagepos=-1;

    FUNC7(&work_os,vf->current_serialno); /* get the memory ready */
    FUNC10(&work_os); /* eliminate the spurious OV_HOLE
                                   return from not necessarily
                                   starting from the beginning */

    while(1){
      if(vf->ready_state>=STREAMSET){
        /* snarf/scan a packet if we can */
        int result=FUNC8(&work_os,&op);

        if(result>0){

          if(vf->vi[vf->current_link].codec_setup){
            thisblock=FUNC13(vf->vi+vf->current_link,&op);
            if(thisblock<0){
              FUNC8(&vf->os,NULL);
              thisblock=0;
            }else{

              /* We can't get a guaranteed correct pcm position out of the
                 last page in a stream because it might have a 'short'
                 granpos, which can only be detected in the presence of a
                 preceding page.  However, if the last page is also the first
                 page, the granpos rules of a first page take precedence.  Not
                 only that, but for first==last, the EOS page must be treated
                 as if its a normal first page for the stream to open/play. */
              if(lastflag && !firstflag)
                FUNC8(&vf->os,NULL);
              else
                if(lastblock)accblock+=(lastblock+thisblock)>>2;
            }

            if(op.granulepos!=-1){
              int i,link=vf->current_link;
              ogg_int64_t granulepos=op.granulepos-vf->pcmlengths[link*2];
              if(granulepos<0)granulepos=0;

              for(i=0;i<link;i++)
                granulepos+=vf->pcmlengths[i*2+1];
              vf->pcm_offset=granulepos-accblock;
              if(vf->pcm_offset<0)vf->pcm_offset=0;
              break;
            }
            lastblock=thisblock;
            continue;
          }else
            FUNC8(&vf->os,NULL);
        }
      }

      if(!lastblock){
        pagepos=FUNC1(vf,&og,-1);
        if(pagepos<0){
          vf->pcm_offset=FUNC12(vf,-1);
          break;
        }
      }else{
        /* huh?  Bogus stream with packets but no granulepos */
        vf->pcm_offset=-1;
        break;
      }

      /* has our decoding just traversed a bitstream boundary? */
      if(vf->ready_state>=STREAMSET){
        if(vf->current_serialno!=FUNC5(&og)){

          /* two possibilities:
             1) our decoding just traversed a bitstream boundary
             2) another stream is multiplexed into this logical section? */

          if(FUNC3(&og)){
            /* we traversed */
            FUNC0(vf); /* clear out stream state */
            FUNC6(&work_os);
          } /* else, do nothing; next loop will scoop another page */
        }
      }

      if(vf->ready_state<STREAMSET){
        int link;
        long serialno = FUNC5(&og);

        for(link=0;link<vf->links;link++)
          if(vf->serialnos[link]==serialno)break;

        if(link==vf->links) continue; /* not the desired Vorbis
                                         bitstream section; keep
                                         trying */
        vf->current_link=link;
        vf->current_serialno=serialno;
        FUNC11(&vf->os,serialno);
        FUNC11(&work_os,serialno);
        vf->ready_state=STREAMSET;
        firstflag=(pagepos<=vf->dataoffsets[link]);
      }

      FUNC9(&vf->os,&og);
      FUNC9(&work_os,&og);
      lastflag=FUNC4(&og);

    }
  }

  FUNC6(&work_os);
  vf->bittrack=0.f;
  vf->samptrack=0.f;
  return(0);

 seek_error:
  /* dump the machine so we're in a known state */
  vf->pcm_offset=-1;
  FUNC6(&work_os);
  FUNC0(vf);
  return OV_EBADLINK;
}