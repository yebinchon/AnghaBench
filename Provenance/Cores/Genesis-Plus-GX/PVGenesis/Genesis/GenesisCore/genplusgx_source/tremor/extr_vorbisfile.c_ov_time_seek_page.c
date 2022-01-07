
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ogg_int64_t ;
struct TYPE_8__ {scalar_t__ ready_state; int links; scalar_t__* pcmlengths; TYPE_1__* vi; int seekable; } ;
struct TYPE_7__ {scalar_t__ rate; } ;
typedef TYPE_2__ OggVorbis_File ;


 scalar_t__ OPENED ;
 int OV_EINVAL ;
 int OV_ENOSEEK ;
 int ov_pcm_seek_page (TYPE_2__*,scalar_t__) ;
 scalar_t__ ov_pcm_total (TYPE_2__*,int) ;
 scalar_t__ ov_time_total (TYPE_2__*,int) ;

int ov_time_seek_page(OggVorbis_File *vf,ogg_int64_t milliseconds){


  int link=-1;
  ogg_int64_t pcm_total=ov_pcm_total(vf,-1);
  ogg_int64_t time_total=ov_time_total(vf,-1);

  if(vf->ready_state<OPENED)return(OV_EINVAL);
  if(!vf->seekable)return(OV_ENOSEEK);
  if(milliseconds<0 || milliseconds>time_total)return(OV_EINVAL);


  for(link=vf->links-1;link>=0;link--){
    pcm_total-=vf->pcmlengths[link*2+1];
    time_total-=ov_time_total(vf,link);
    if(milliseconds>=time_total)break;
  }


  {
    ogg_int64_t target=pcm_total+(milliseconds-time_total)*vf->vi[link].rate/1000;
    return(ov_pcm_seek_page(vf,target));
  }
}
