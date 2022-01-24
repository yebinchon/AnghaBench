#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int (* seek_func ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ ov_callbacks ;
struct TYPE_11__ {int serialno; } ;
struct TYPE_10__ {int seekable; int links; int* serialnos; int current_serialno; int /*<<< orphan*/  ready_state; int /*<<< orphan*/  offset; int /*<<< orphan*/ * dataoffsets; scalar_t__* offsets; TYPE_4__ os; int /*<<< orphan*/ * datasource; void* vc; void* vi; int /*<<< orphan*/  oy; TYPE_1__ callbacks; } ;
typedef  TYPE_2__ OggVorbis_File ;

/* Variables and functions */
 int /*<<< orphan*/  PARTOPEN ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int FUNC0 (TYPE_2__*,void*,void*,long**,int*,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (long*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(void *f,OggVorbis_File *vf,const char *initial,
                     long ibytes, ov_callbacks callbacks){
  int offsettest=((f && callbacks.seek_func)?callbacks.seek_func(f,0,SEEK_CUR):-1);
  long *serialno_list=NULL;
  int serialno_list_size=0;
  int ret;

  FUNC4(vf,0,sizeof(*vf));
  vf->datasource=f;
  vf->callbacks = callbacks;

  /* init the framing state */
  FUNC7(&vf->oy);

  /* perhaps some data was previously read into a buffer for testing
     against other stream types.  Allow initialization from this
     previously read data (especially as we may be reading from a
     non-seekable stream) */
  if(initial){
    char *buffer=FUNC6(&vf->oy,ibytes);
    FUNC3(buffer,initial,ibytes);
    FUNC8(&vf->oy,ibytes);
  }

  /* can we seek? Stevens suggests the seek test was portable */
  if(offsettest!=-1)vf->seekable=1;

  /* No seeking yet; Set up a 'single' (current) logical bitstream
     entry for partial open */
  vf->links=1;
  vf->vi=FUNC1(vf->links,sizeof(*vf->vi));
  vf->vc=FUNC1(vf->links,sizeof(*vf->vc));
  FUNC5(&vf->os,-1); /* fill in the serialno later */

  /* Fetch all BOS pages, store the vorbis header and all seen serial
     numbers, load subsequent vorbis setup headers */
  if((ret=FUNC0(vf,vf->vi,vf->vc,&serialno_list,&serialno_list_size,NULL))<0){
    vf->datasource=NULL;
    FUNC9(vf);
  }else{
    /* serial number list for first link needs to be held somewhere
       for second stage of seekable stream open; this saves having to
       seek/reread first link's serialnumber data then. */
    vf->serialnos=FUNC1(serialno_list_size+2,sizeof(*vf->serialnos));
    vf->serialnos[0]=vf->current_serialno=vf->os.serialno;
    vf->serialnos[1]=serialno_list_size;
    FUNC3(vf->serialnos+2,serialno_list,serialno_list_size*sizeof(*vf->serialnos));

    vf->offsets=FUNC1(1,sizeof(*vf->offsets));
    vf->dataoffsets=FUNC1(1,sizeof(*vf->dataoffsets));
    vf->offsets[0]=0;
    vf->dataoffsets[0]=vf->offset;

    vf->ready_state=PARTOPEN;
  }
  if(serialno_list)FUNC2(serialno_list);
  return(ret);
}