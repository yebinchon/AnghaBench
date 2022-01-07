
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int static_codebook ;


 int _ogg_free (int *) ;
 int vorbis_staticbook_clear (int *) ;

void vorbis_staticbook_destroy(static_codebook *b){
  vorbis_staticbook_clear(b);
  _ogg_free(b);
}
