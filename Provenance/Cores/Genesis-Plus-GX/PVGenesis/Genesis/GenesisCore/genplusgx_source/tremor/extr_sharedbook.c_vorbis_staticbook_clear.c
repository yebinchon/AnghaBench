
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lengthlist; scalar_t__ quantlist; } ;
typedef TYPE_1__ static_codebook ;


 int _ogg_free (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

void vorbis_staticbook_clear(static_codebook *b){
  if(b->quantlist)_ogg_free(b->quantlist);
  if(b->lengthlist)_ogg_free(b->lengthlist);
  memset(b,0,sizeof(*b));

}
