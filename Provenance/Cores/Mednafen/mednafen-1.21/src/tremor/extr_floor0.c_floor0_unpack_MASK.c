#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int order; int rate; int barkmap; int numbooks; size_t* books; void* ampdB; void* ampbits; } ;
typedef  TYPE_2__ vorbis_info_floor0 ;
typedef  TYPE_2__ vorbis_info_floor ;
struct TYPE_11__ {scalar_t__ codec_setup; } ;
typedef  TYPE_4__ vorbis_info ;
typedef  int /*<<< orphan*/  oggpack_buffer ;
struct TYPE_12__ {size_t books; TYPE_1__** book_param; } ;
typedef  TYPE_5__ codec_setup_info ;
struct TYPE_9__ {scalar_t__ maptype; int dim; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static vorbis_info_floor *FUNC3 (vorbis_info *vi,oggpack_buffer *opb){
  codec_setup_info     *ci=(codec_setup_info *)vi->codec_setup;
  int j;

  vorbis_info_floor0 *info=(vorbis_info_floor0 *)FUNC0(sizeof(*info));
  info->order=FUNC2(opb,8);
  info->rate=FUNC2(opb,16);
  info->barkmap=FUNC2(opb,16);
  info->ampbits=FUNC2(opb,6);
  info->ampdB=FUNC2(opb,8);
  info->numbooks=FUNC2(opb,4)+1;
  
  if(info->order<1)goto err_out;
  if(info->rate<1)goto err_out;
  if(info->barkmap<1)goto err_out;
  if(info->numbooks<1)goto err_out;
    
  for(j=0;j<info->numbooks;j++){
    info->books[j]=FUNC2(opb,8);
    if(info->books[j]<0 || info->books[j]>=ci->books)goto err_out;
    if(ci->book_param[info->books[j]]->maptype==0)goto err_out;
    if(ci->book_param[info->books[j]]->dim<1)goto err_out;
  }
  return(info);

 err_out:
  FUNC1(info);
  return(NULL);
}