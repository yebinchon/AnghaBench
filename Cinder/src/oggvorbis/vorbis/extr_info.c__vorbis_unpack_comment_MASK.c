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
struct TYPE_9__ {int comments; int* comment_lengths; void** user_comments; void* vendor; } ;
typedef  TYPE_1__ vorbis_comment ;
struct TYPE_10__ {int storage; } ;
typedef  TYPE_2__ oggpack_buffer ;

/* Variables and functions */
 int OV_EBADHEADER ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,void*,int) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(vorbis_comment *vc,oggpack_buffer *opb){
  int i;
  int vendorlen=FUNC3(opb,32);
  if(vendorlen<0)goto err_out;
  if(vendorlen>opb->storage-8)goto err_out;
  vc->vendor=FUNC0(vendorlen+1,1);
  FUNC1(opb,vc->vendor,vendorlen);
  i=FUNC3(opb,32);
  if(i<0)goto err_out;
  if(i>((opb->storage-FUNC2(opb))>>2))goto err_out;
  vc->comments=i;
  vc->user_comments=FUNC0(vc->comments+1,sizeof(*vc->user_comments));
  vc->comment_lengths=FUNC0(vc->comments+1, sizeof(*vc->comment_lengths));

  for(i=0;i<vc->comments;i++){
    int len=FUNC3(opb,32);
    if(len<0)goto err_out;
    if(len>opb->storage-FUNC2(opb))goto err_out;
    vc->comment_lengths[i]=len;
    vc->user_comments[i]=FUNC0(len+1,1);
    FUNC1(opb,vc->user_comments[i],len);
  }
  if(FUNC3(opb,1)!=1)goto err_out; /* EOP check */

  return(0);
 err_out:
  FUNC4(vc);
  return(OV_EBADHEADER);
}