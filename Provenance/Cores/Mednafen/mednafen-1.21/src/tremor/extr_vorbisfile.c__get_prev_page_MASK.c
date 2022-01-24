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
struct TYPE_9__ {scalar_t__ header_len; } ;
typedef  TYPE_1__ ogg_page ;
typedef  int ogg_int64_t ;
struct TYPE_10__ {int offset; } ;
typedef  TYPE_2__ OggVorbis_File ;

/* Variables and functions */
 int CHUNKSIZE ; 
 int OV_EFAULT ; 
 int OV_EREAD ; 
 int FUNC0 (TYPE_2__*,TYPE_1__*,int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ogg_int64_t FUNC3(OggVorbis_File *vf,ogg_int64_t begin,ogg_page *og){
  ogg_int64_t end = begin;
  ogg_int64_t ret;
  ogg_int64_t offset=-1;

  while(offset==-1){
    begin-=CHUNKSIZE;
    if(begin<0)
      begin=0;

    ret=FUNC1(vf,begin);
    if(ret)return(ret);

    while(vf->offset<end){
      FUNC2(og,0,sizeof(*og));
      ret=FUNC0(vf,og,end-vf->offset);
      if(ret==OV_EREAD)return(OV_EREAD);
      if(ret<0){
        break;
      }else{
        offset=ret;
      }
    }
  }

  /* In a fully compliant, non-multiplexed stream, we'll still be
     holding the last page.  In multiplexed (or noncompliant streams),
     we will probably have to re-read the last page we saw */
  if(og->header_len==0){
    ret=FUNC1(vf,offset);
    if(ret)return(ret);

    ret=FUNC0(vf,og,CHUNKSIZE);
    if(ret<0)
      /* this shouldn't be possible */
      return(OV_EFAULT);
  }

  return(offset);
}