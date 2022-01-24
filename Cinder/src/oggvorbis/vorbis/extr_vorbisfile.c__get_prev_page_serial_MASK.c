#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ogg_page ;
typedef  int ogg_int64_t ;
struct TYPE_5__ {int offset; } ;
typedef  TYPE_1__ OggVorbis_File ;

/* Variables and functions */
 int CHUNKSIZE ; 
 int OV_EREAD ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,long*,int) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ogg_int64_t FUNC5(OggVorbis_File *vf,
                                         long *serial_list, int serial_n,
                                         int *serialno, ogg_int64_t *granpos){
  ogg_page og;
  ogg_int64_t begin=vf->offset;
  ogg_int64_t end=begin;
  ogg_int64_t ret;

  ogg_int64_t prefoffset=-1;
  ogg_int64_t offset=-1;
  ogg_int64_t ret_serialno=-1;
  ogg_int64_t ret_gran=-1;

  while(offset==-1){
    begin-=CHUNKSIZE;
    if(begin<0)
      begin=0;

    ret=FUNC2(vf,begin);
    if(ret)return(ret);

    while(vf->offset<end){
      ret=FUNC0(vf,&og,end-vf->offset);
      if(ret==OV_EREAD)return(OV_EREAD);
      if(ret<0){
        break;
      }else{
        ret_serialno=FUNC4(&og);
        ret_gran=FUNC3(&og);
        offset=ret;

        if(ret_serialno == *serialno){
          prefoffset=ret;
          *granpos=ret_gran;
        }

        if(!FUNC1(ret_serialno,serial_list,serial_n)){
          /* we fell off the end of the link, which means we seeked
             back too far and shouldn't have been looking in that link
             to begin with.  If we found the preferred serial number,
             forget that we saw it. */
          prefoffset=-1;
        }
      }
    }
  }

  /* we're not interested in the page... just the serialno and granpos. */
  if(prefoffset>=0)return(prefoffset);

  *serialno = ret_serialno;
  *granpos = ret_gran;
  return(offset);

}