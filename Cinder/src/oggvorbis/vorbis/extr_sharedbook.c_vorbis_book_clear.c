
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dec_firsttable; scalar_t__ dec_codelengths; scalar_t__ dec_index; scalar_t__ codelist; scalar_t__ valuelist; } ;
typedef TYPE_1__ codebook ;


 int _ogg_free (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

void vorbis_book_clear(codebook *b){


  if(b->valuelist)_ogg_free(b->valuelist);
  if(b->codelist)_ogg_free(b->codelist);

  if(b->dec_index)_ogg_free(b->dec_index);
  if(b->dec_codelengths)_ogg_free(b->dec_codelengths);
  if(b->dec_firsttable)_ogg_free(b->dec_firsttable);

  memset(b,0,sizeof(*b));
}
