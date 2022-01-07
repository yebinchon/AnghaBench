
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int codec_setup; } ;
typedef TYPE_1__ vorbis_info ;
typedef int codec_setup_info ;


 int _ogg_calloc (int,int) ;
 int memset (TYPE_1__*,int ,int) ;

void vorbis_info_init(vorbis_info *vi){
  memset(vi,0,sizeof(*vi));
  vi->codec_setup=_ogg_calloc(1,sizeof(codec_setup_info));
}
