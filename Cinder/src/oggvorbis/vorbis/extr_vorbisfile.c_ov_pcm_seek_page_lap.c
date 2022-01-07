
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ogg_int64_t ;
typedef int OggVorbis_File ;


 int _ov_64_seek_lap (int *,int ,int ) ;
 int ov_pcm_seek_page ;

int ov_pcm_seek_page_lap(OggVorbis_File *vf,ogg_int64_t pos){
  return _ov_64_seek_lap(vf,pos,ov_pcm_seek_page);
}
