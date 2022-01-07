
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vorbis_info ;


 int vorbis_encode_setup_init (int *) ;
 int vorbis_encode_setup_vbr (int *,long,long,float) ;
 int vorbis_info_clear (int *) ;

int vorbis_encode_init_vbr(vorbis_info *vi,
                           long channels,
                           long rate,

                           float base_quality
                           ){
  int ret=0;

  ret=vorbis_encode_setup_vbr(vi,channels,rate,base_quality);

  if(ret){
    vorbis_info_clear(vi);
    return ret;
  }
  ret=vorbis_encode_setup_init(vi);
  if(ret)
    vorbis_info_clear(vi);
  return(ret);
}
