#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int (* seek_func ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ ov_callbacks ;
struct TYPE_9__ {int seekable; int links; scalar_t__ ready_state; int /*<<< orphan*/ * datasource; int /*<<< orphan*/  current_serialno; void* vc; void* vi; int /*<<< orphan*/  os; int /*<<< orphan*/  oy; TYPE_1__ callbacks; } ;
typedef  TYPE_2__ OggVorbis_File ;

/* Variables and functions */
 scalar_t__ PARTOPEN ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int FUNC0 (TYPE_2__*,void*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char*,long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned char* FUNC5 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(void *f,OggVorbis_File *vf,char *initial,
		     long ibytes, ov_callbacks callbacks){
  int offsettest=(f?callbacks.seek_func(f,0,SEEK_CUR):-1);
  int ret;

  FUNC3(vf,0,sizeof(*vf));
  vf->datasource=f;
  vf->callbacks = callbacks;

  /* init the framing state */
  vf->oy=FUNC6();

  /* perhaps some data was previously read into a buffer for testing
     against other stream types.  Allow initialization from this
     previously read data (as we may be reading from a non-seekable
     stream) */
  if(initial){
    unsigned char *buffer=FUNC5(vf->oy,ibytes);
    FUNC2(buffer,initial,ibytes);
    FUNC7(vf->oy,ibytes);
  }

  /* can we seek? Stevens suggests the seek test was portable */
  if(offsettest!=-1)vf->seekable=1;

  /* No seeking yet; Set up a 'single' (current) logical bitstream
     entry for partial open */
  vf->links=1;
  vf->vi=FUNC1(vf->links,sizeof(*vf->vi));
  vf->vc=FUNC1(vf->links,sizeof(*vf->vc));
  vf->os=FUNC4(-1); /* fill in the serialno later */

  /* Try to fetch the headers, maintaining all the storage */
  if((ret=FUNC0(vf,vf->vi,vf->vc,&vf->current_serialno,NULL))<0){
    vf->datasource=NULL;
    FUNC8(vf);
  }else if(vf->ready_state < PARTOPEN)
    vf->ready_state=PARTOPEN;
  return(ret);
}