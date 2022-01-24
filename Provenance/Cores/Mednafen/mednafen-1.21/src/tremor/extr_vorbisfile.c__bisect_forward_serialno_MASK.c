#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vorbis_info ;
typedef  int /*<<< orphan*/  vorbis_comment ;
typedef  int ogg_uint32_t ;
typedef  int /*<<< orphan*/  ogg_page ;
typedef  int ogg_int64_t ;
struct TYPE_9__ {int serialno; } ;
struct TYPE_10__ {long links; int* offsets; int* serialnos; int* dataoffsets; int* pcmlengths; int offset; int /*<<< orphan*/ * vc; int /*<<< orphan*/ * vi; TYPE_1__ os; } ;
typedef  TYPE_2__ OggVorbis_File ;

/* Variables and functions */
 scalar_t__ CHUNKSIZE ; 
 int OV_EREAD ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int**,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_2__*,int,int*,int,int*,int*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC5 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 void* FUNC7 (int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC10(OggVorbis_File *vf,
                                    ogg_int64_t begin,
                                    ogg_int64_t searched,
                                    ogg_int64_t end,
                                    ogg_int64_t endgran,
                                    int endserial,
                                    ogg_uint32_t *currentno_list,
                                    int  currentnos,
                                    long m){
  ogg_int64_t pcmoffset;
  ogg_int64_t dataoffset=searched;
  ogg_int64_t endsearched=end;
  ogg_int64_t next=end;
  ogg_int64_t searchgran=-1;
  ogg_page og;
  ogg_int64_t ret,last;
  int serialno = vf->os.serialno;

  /* invariants:
     we have the headers and serialnos for the link beginning at 'begin'
     we have the offset and granpos of the last page in the file (potentially
       not a page we care about)
  */

  /* Is the last page in our list of current serialnumbers? */
  if(FUNC5(endserial,currentno_list,currentnos)){

    /* last page is in the starting serialno list, so we've bisected
       down to (or just started with) a single link.  Now we need to
       find the last vorbis page belonging to the first vorbis stream
       for this link. */
    searched = end;
    while(endserial != serialno){
      endserial = serialno;
      searched=FUNC2(vf,searched,currentno_list,currentnos,&endserial,&endgran);
    }

    vf->links=m+1;
    if(vf->offsets)FUNC6(vf->offsets);
    if(vf->serialnos)FUNC6(vf->serialnos);
    if(vf->dataoffsets)FUNC6(vf->dataoffsets);

    vf->offsets=FUNC7((vf->links+1)*sizeof(*vf->offsets));
    vf->vi=FUNC8(vf->vi,vf->links*sizeof(*vf->vi));
    vf->vc=FUNC8(vf->vc,vf->links*sizeof(*vf->vc));
    vf->serialnos=FUNC7(vf->links*sizeof(*vf->serialnos));
    vf->dataoffsets=FUNC7(vf->links*sizeof(*vf->dataoffsets));
    vf->pcmlengths=FUNC7(vf->links*2*sizeof(*vf->pcmlengths));

    vf->offsets[m+1]=end;
    vf->offsets[m]=begin;
    vf->pcmlengths[m*2+1]=(endgran<0?0:endgran);

  }else{

    /* last page is not in the starting stream's serial number list,
       so we have multiple links.  Find where the stream that begins
       our bisection ends. */

    ogg_uint32_t *next_serialno_list=NULL;
    int next_serialnos=0;
    vorbis_info vi;
    vorbis_comment vc;
    int testserial = serialno+1;

    /* the below guards against garbage seperating the last and
       first pages of two links. */
    while(searched<endsearched){
      ogg_int64_t bisect;

      if(endsearched-searched<CHUNKSIZE){
        bisect=searched;
      }else{
        bisect=(searched+endsearched)/2;
      }

      ret=FUNC9(vf,bisect);
      if(ret)return(ret);

      last=FUNC1(vf,&og,-1);
      if(last==OV_EREAD)return(OV_EREAD);
      if(last<0 || !FUNC4(&og,currentno_list,currentnos)){
        endsearched=bisect;
        if(last>=0)next=last;
      }else{
        searched=vf->offset;
      }
    }

    /* Bisection point found */
    /* for the time being, fetch end PCM offset the simple way */
    searched = next;
    while(testserial != serialno){
      testserial = serialno;
      searched = FUNC2(vf,searched,currentno_list,currentnos,&testserial,&searchgran);
    }

    ret=FUNC9(vf,next);
    if(ret)return(ret);

    ret=FUNC0(vf,&vi,&vc,&next_serialno_list,&next_serialnos,NULL);
    if(ret)return(ret);
    serialno = vf->os.serialno;
    dataoffset = vf->offset;

    /* this will consume a page, however the next bisection always
       starts with a raw seek */
    pcmoffset = FUNC3(vf,&vi);

    ret=FUNC10(vf,next,vf->offset,end,endgran,endserial,
                                 next_serialno_list,next_serialnos,m+1);
    if(ret)return(ret);

    if(next_serialno_list)FUNC6(next_serialno_list);

    vf->offsets[m+1]=next;
    vf->serialnos[m+1]=serialno;
    vf->dataoffsets[m+1]=dataoffset;

    vf->vi[m+1]=vi;
    vf->vc[m+1]=vc;

    vf->pcmlengths[m*2+1]=searchgran;
    vf->pcmlengths[m*2+2]=pcmoffset;
    vf->pcmlengths[m*2+3]-=pcmoffset;
    if(vf->pcmlengths[m*2+3]<0)vf->pcmlengths[m*2+3]=0;

  }
  return(0);
}