
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vorbis_look_floor1 ;
typedef int vorbis_look_floor ;


 int _ogg_free (int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void floor1_free_look(vorbis_look_floor *i){
  vorbis_look_floor1 *look=(vorbis_look_floor1 *)i;
  if(look){
    memset(look,0,sizeof(*look));
    _ogg_free(look);
  }
}
