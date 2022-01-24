#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int version; int channels; int rate; int bitrate_upper; int bitrate_nominal; int bitrate_lower; scalar_t__ codec_setup; } ;
typedef  TYPE_1__ vorbis_info ;
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_6__ {int* blocksizes; } ;
typedef  TYPE_2__ codec_setup_info ;

/* Variables and functions */
 int OV_EBADHEADER ; 
 int OV_EFAULT ; 
 int OV_EVERSION ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(vorbis_info *vi,oggpack_buffer *opb){
  codec_setup_info     *ci=(codec_setup_info *)vi->codec_setup;
  if(!ci)return(OV_EFAULT);

  vi->version=FUNC0(opb,32);
  if(vi->version!=0)return(OV_EVERSION);

  vi->channels=FUNC0(opb,8);
  vi->rate=FUNC0(opb,32);

  vi->bitrate_upper=FUNC0(opb,32);
  vi->bitrate_nominal=FUNC0(opb,32);
  vi->bitrate_lower=FUNC0(opb,32);

  ci->blocksizes[0]=1<<FUNC0(opb,4);
  ci->blocksizes[1]=1<<FUNC0(opb,4);
  
  if(vi->rate<1)goto err_out;
  if(vi->channels<1)goto err_out;
  if(ci->blocksizes[0]<64)goto err_out; 
  if(ci->blocksizes[1]<ci->blocksizes[0])goto err_out;
  if(ci->blocksizes[1]>8192)goto err_out;
  
  if(FUNC0(opb,1)!=1)goto err_out; /* EOP check */

  return(0);
 err_out:
  FUNC1(vi);
  return(OV_EBADHEADER);
}