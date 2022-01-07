
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ready_state; } ;
typedef TYPE_1__ OggVorbis_File ;


 scalar_t__ INITSET ;
 int OV_HOLE ;
 int _fetch_and_process_packet (TYPE_1__*,int *,int,int ) ;

__attribute__((used)) static int _ov_initset(OggVorbis_File *vf){
  while(1){
    if(vf->ready_state==INITSET)break;

    {
      int ret=_fetch_and_process_packet(vf,((void*)0),1,0);
      if(ret<0 && ret!=OV_HOLE)return(ret);
    }
  }
  return 0;
}
