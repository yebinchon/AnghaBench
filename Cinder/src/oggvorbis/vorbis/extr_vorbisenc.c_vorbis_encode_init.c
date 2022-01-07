
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vorbis_info ;


 int vorbis_encode_setup_init (int *) ;
 int vorbis_encode_setup_managed (int *,long,long,long,long,long) ;
 int vorbis_info_clear (int *) ;

int vorbis_encode_init(vorbis_info *vi,
                       long channels,
                       long rate,

                       long max_bitrate,
                       long nominal_bitrate,
                       long min_bitrate){

  int ret=vorbis_encode_setup_managed(vi,channels,rate,
                                      max_bitrate,
                                      nominal_bitrate,
                                      min_bitrate);
  if(ret){
    vorbis_info_clear(vi);
    return(ret);
  }

  ret=vorbis_encode_setup_init(vi);
  if(ret)
    vorbis_info_clear(vi);
  return(ret);
}
