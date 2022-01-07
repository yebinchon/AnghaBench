
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* lengthlist; struct TYPE_5__* quantlist; } ;
typedef TYPE_1__ static_codebook ;


 int _ogg_free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void vorbis_staticbook_destroy(static_codebook *b){
  if(b->quantlist)_ogg_free(b->quantlist);
  if(b->lengthlist)_ogg_free(b->lengthlist);
  memset(b,0,sizeof(*b));
  _ogg_free(b);
}
