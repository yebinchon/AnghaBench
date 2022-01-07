
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vorbis_info ;
typedef int vorbis_dsp_state ;


 int _vds_init (int *,int *) ;
 int vorbis_synthesis_restart (int *) ;

int vorbis_synthesis_init(vorbis_dsp_state *v,vorbis_info *vi){
  _vds_init(v,vi);
  vorbis_synthesis_restart(v);

  return(0);
}
