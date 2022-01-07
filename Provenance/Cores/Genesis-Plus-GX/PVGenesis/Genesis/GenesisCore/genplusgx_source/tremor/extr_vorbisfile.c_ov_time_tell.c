
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ogg_int64_t ;
struct TYPE_7__ {scalar_t__ ready_state; int links; int pcm_offset; TYPE_1__* vi; scalar_t__* pcmlengths; scalar_t__ seekable; } ;
struct TYPE_6__ {int rate; } ;
typedef TYPE_2__ OggVorbis_File ;


 scalar_t__ OPENED ;
 int OV_EINVAL ;
 int ov_pcm_total (TYPE_2__*,int) ;
 int ov_time_total (TYPE_2__*,int) ;

ogg_int64_t ov_time_tell(OggVorbis_File *vf){
  int link=0;
  ogg_int64_t pcm_total=0;
  ogg_int64_t time_total=0;

  if(vf->ready_state<OPENED)return(OV_EINVAL);
  if(vf->seekable){
    pcm_total=ov_pcm_total(vf,-1);
    time_total=ov_time_total(vf,-1);


    for(link=vf->links-1;link>=0;link--){
      pcm_total-=vf->pcmlengths[link*2+1];
      time_total-=ov_time_total(vf,link);
      if(vf->pcm_offset>=pcm_total)break;
    }
  }

  return(time_total+(1000*vf->pcm_offset-pcm_total)/vf->vi[link].rate);
}
