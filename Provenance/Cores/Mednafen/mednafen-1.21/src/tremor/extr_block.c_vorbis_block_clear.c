
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ localstore; } ;
typedef TYPE_1__ vorbis_block ;


 int _ogg_free (scalar_t__) ;
 int _vorbis_block_ripcord (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

int vorbis_block_clear(vorbis_block *vb){
  _vorbis_block_ripcord(vb);
  if(vb->localstore)_ogg_free(vb->localstore);

  memset(vb,0,sizeof(*vb));
  return(0);
}
