
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int q_delta; int q_min; int entries; int lengthlist; int dim; } ;
typedef TYPE_1__ static_codebook ;
struct TYPE_8__ {int minval; int delta; int quantvals; int codelist; int dim; int used_entries; int entries; TYPE_1__ const* c; } ;
typedef TYPE_2__ codebook ;


 int _book_maptype1_quantvals (TYPE_1__ const*) ;
 int _float32_unpack (int ) ;
 int _make_words (int ,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ rint (int ) ;

int vorbis_book_init_encode(codebook *c,const static_codebook *s){

  memset(c,0,sizeof(*c));
  c->c=s;
  c->entries=s->entries;
  c->used_entries=s->entries;
  c->dim=s->dim;
  c->codelist=_make_words(s->lengthlist,s->entries,0);

  c->quantvals=_book_maptype1_quantvals(s);
  c->minval=(int)rint(_float32_unpack(s->q_min));
  c->delta=(int)rint(_float32_unpack(s->q_delta));

  return(0);
}
