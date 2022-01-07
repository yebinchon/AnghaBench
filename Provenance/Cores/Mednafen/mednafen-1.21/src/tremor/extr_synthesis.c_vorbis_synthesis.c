
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vorbis_block ;
typedef int ogg_packet ;


 int _vorbis_synthesis1 (int *,int *,int) ;

int vorbis_synthesis(vorbis_block *vb,ogg_packet *op){
  return _vorbis_synthesis1(vb,op,1);
}
