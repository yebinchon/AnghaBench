#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vorbis_info ;
typedef  int /*<<< orphan*/  vorbis_comment ;
typedef  int /*<<< orphan*/  ogg_uint32_t ;
typedef  int /*<<< orphan*/  ogg_page ;
typedef  int /*<<< orphan*/  ogg_packet ;
typedef  int ogg_int64_t ;
struct TYPE_8__ {scalar_t__ serialno; } ;
struct TYPE_7__ {scalar_t__ ready_state; TYPE_2__ os; } ;
typedef  TYPE_1__ OggVorbis_File ;

/* Variables and functions */
 int /*<<< orphan*/  CHUNKSIZE ; 
 void* OPENED ; 
 int OV_EBADHEADER ; 
 int OV_ENOTVORBIS ; 
 int OV_EREAD ; 
 scalar_t__ STREAMSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(OggVorbis_File *vf,vorbis_info *vi,vorbis_comment *vc,
                          ogg_uint32_t **serialno_list, int *serialno_n,
                          ogg_page *og_ptr){
  ogg_page og;
  ogg_packet op;
  int i,ret;
  int allbos=0;

  if(!og_ptr){
    ogg_int64_t llret=FUNC1(vf,&og,CHUNKSIZE);
    if(llret==OV_EREAD)return(OV_EREAD);
    if(llret<0)return(OV_ENOTVORBIS);
    og_ptr=&og;
  }

  FUNC12(vi);
  FUNC10(vc);
  vf->ready_state=OPENED;

  /* extract the serialnos of all BOS pages + the first set of vorbis
     headers we see in the link */

  while(FUNC4(og_ptr)){
    if(serialno_list){
      if(FUNC2(og_ptr,*serialno_list,*serialno_n)){
        /* a dupe serialnumber in an initial header packet set == invalid stream */
        if(*serialno_list)FUNC3(*serialno_list);
        *serialno_list=0;
        *serialno_n=0;
        ret=OV_EBADHEADER;
        goto bail_header;
      }

      FUNC0(og_ptr,serialno_list,serialno_n);
    }

    if(vf->ready_state<STREAMSET){
      /* we don't have a vorbis stream in this link yet, so begin
         prospective stream setup. We need a stream to get packets */
      FUNC8(&vf->os,FUNC5(og_ptr));
      FUNC7(&vf->os,og_ptr);

      if(FUNC6(&vf->os,&op) > 0 &&
         FUNC14(&op)){
        /* vorbis header; continue setup */
        vf->ready_state=STREAMSET;
        if((ret=FUNC13(vi,vc,&op))){
          ret=OV_EBADHEADER;
          goto bail_header;
        }
      }
    }

    /* get next page */
    {
      ogg_int64_t llret=FUNC1(vf,og_ptr,CHUNKSIZE);
      if(llret==OV_EREAD){
        ret=OV_EREAD;
        goto bail_header;
      }
      if(llret<0){
        ret=OV_ENOTVORBIS;
        goto bail_header;
      }

      /* if this page also belongs to our vorbis stream, submit it and break */
      if(vf->ready_state==STREAMSET &&
         vf->os.serialno == FUNC5(og_ptr)){
        FUNC7(&vf->os,og_ptr);
        break;
      }
    }
  }

  if(vf->ready_state!=STREAMSET){
    ret = OV_ENOTVORBIS;
    goto bail_header;
  }

  while(1){

    i=0;
    while(i<2){ /* get a page loop */

      while(i<2){ /* get a packet loop */

        int result=FUNC6(&vf->os,&op);
        if(result==0)break;
        if(result==-1){
          ret=OV_EBADHEADER;
          goto bail_header;
        }

        if((ret=FUNC13(vi,vc,&op)))
          goto bail_header;

        i++;
      }

      while(i<2){
        if(FUNC1(vf,og_ptr,CHUNKSIZE)<0){
          ret=OV_EBADHEADER;
          goto bail_header;
        }

        /* if this page belongs to the correct stream, go parse it */
        if(vf->os.serialno == FUNC5(og_ptr)){
          FUNC7(&vf->os,og_ptr);
          break;
        }

        /* if we never see the final vorbis headers before the link
           ends, abort */
        if(FUNC4(og_ptr)){
          if(allbos){
            ret = OV_EBADHEADER;
            goto bail_header;
          }else
            allbos=1;
        }

        /* otherwise, keep looking */
      }
    }

    return 0;
  }

 bail_header:
  FUNC11(vi);
  FUNC9(vc);
  vf->ready_state=OPENED;

  return ret;
}