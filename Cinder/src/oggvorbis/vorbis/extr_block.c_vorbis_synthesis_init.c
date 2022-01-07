
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vorbis_info ;
typedef int vorbis_dsp_state ;


 scalar_t__ _vds_shared_init (int *,int *,int ) ;
 int vorbis_dsp_clear (int *) ;
 int vorbis_synthesis_restart (int *) ;

int vorbis_synthesis_init(vorbis_dsp_state *v,vorbis_info *vi){
  if(_vds_shared_init(v,vi,0)){
    vorbis_dsp_clear(v);
    return 1;
  }
  vorbis_synthesis_restart(v);
  return 0;
}
