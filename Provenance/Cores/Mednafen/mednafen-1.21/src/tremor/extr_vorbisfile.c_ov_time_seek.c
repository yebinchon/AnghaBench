
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ogg_int64_t ;
struct TYPE_7__ {scalar_t__ ready_state; int links; scalar_t__* pcmlengths; TYPE_1__* vi; int seekable; } ;
struct TYPE_6__ {scalar_t__ rate; } ;
typedef TYPE_2__ OggVorbis_File ;


 scalar_t__ OPENED ;
 int OV_EINVAL ;
 int OV_ENOSEEK ;
 int ov_pcm_seek (TYPE_2__*,scalar_t__) ;
 scalar_t__ ov_time_total (TYPE_2__*,int) ;

int ov_time_seek(OggVorbis_File *vf,ogg_int64_t milliseconds){


  int link=-1;
  ogg_int64_t pcm_total=0;
  ogg_int64_t time_total=0;

  if(vf->ready_state<OPENED)return(OV_EINVAL);
  if(!vf->seekable)return(OV_ENOSEEK);
  if(milliseconds<0)return(OV_EINVAL);


  for(link=0;link<vf->links;link++){
    ogg_int64_t addsec = ov_time_total(vf,link);
    if(milliseconds<time_total+addsec)break;
    time_total+=addsec;
    pcm_total+=vf->pcmlengths[link*2+1];
  }

  if(link==vf->links)return(OV_EINVAL);


  {
    ogg_int64_t target=pcm_total+(milliseconds-time_total)*vf->vi[link].rate/1000;
    return(ov_pcm_seek(vf,target));
  }
}
