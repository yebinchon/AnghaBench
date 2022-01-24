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
typedef  scalar_t__ ogg_uint32_t ;
struct TYPE_9__ {scalar_t__ header_len; scalar_t__ body_len; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ogg_page ;
typedef  scalar_t__ ogg_int64_t ;
struct TYPE_10__ {long links; scalar_t__ offset; scalar_t__* serialnos; scalar_t__* offsets; } ;
typedef  TYPE_2__ OggVorbis_File ;

/* Variables and functions */
 scalar_t__ CHUNKSIZE ; 
 scalar_t__ OV_EREAD ; 
 scalar_t__ FUNC0 (TYPE_2__*,TYPE_1__*,int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(OggVorbis_File *vf,
				    ogg_int64_t begin,
				    ogg_int64_t searched,
				    ogg_int64_t end,
				    ogg_uint32_t currentno,
				    long m){
  ogg_int64_t endsearched=end;
  ogg_int64_t next=end;
  ogg_page og={0,0,0,0};
  ogg_int64_t ret;
  
  /* the below guards against garbage seperating the last and
     first pages of two links. */
  while(searched<endsearched){
    ogg_int64_t bisect;
    
    if(endsearched-searched<CHUNKSIZE){
      bisect=searched;
    }else{
      bisect=(searched+endsearched)/2;
    }
    
    FUNC2(vf,bisect);
    ret=FUNC0(vf,&og,-1);
    if(ret==OV_EREAD)return(OV_EREAD);
    if(ret<0 || FUNC4(&og)!=currentno){
      endsearched=bisect;
      if(ret>=0)next=ret;
    }else{
      searched=ret+og.header_len+og.body_len;
    }
    FUNC3(&og);
  }

  FUNC2(vf,next);
  ret=FUNC0(vf,&og,-1);
  if(ret==OV_EREAD)return(OV_EREAD);
  
  if(searched>=end || ret<0){
    FUNC3(&og);
    vf->links=m+1;
    vf->offsets=FUNC1((vf->links+1)*sizeof(*vf->offsets));
    vf->serialnos=FUNC1(vf->links*sizeof(*vf->serialnos));
    vf->offsets[m+1]=searched;
  }else{
    ret=FUNC5(vf,next,vf->offset,
				 end,FUNC4(&og),m+1);
    FUNC3(&og);
    if(ret==OV_EREAD)return(OV_EREAD);
  }
  
  vf->offsets[m]=begin;
  vf->serialnos[m]=currentno;
  return(0);
}