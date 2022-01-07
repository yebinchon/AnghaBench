
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OggVorbis_File ;


 int _ov_d_seek_lap (int *,double,int ) ;
 int ov_time_seek ;

int ov_time_seek_lap(OggVorbis_File *vf,double pos){
  return _ov_d_seek_lap(vf,pos,ov_time_seek);
}
