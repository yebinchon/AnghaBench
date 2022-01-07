
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mark; int filter; int mdct_win; TYPE_1__* band; int mdct; } ;
typedef TYPE_2__ envelope_lookup ;
struct TYPE_5__ {int window; } ;


 int VE_BANDS ;
 int _ogg_free (int ) ;
 int mdct_clear (int *) ;
 int memset (TYPE_2__*,int ,int) ;

void _ve_envelope_clear(envelope_lookup *e){
  int i;
  mdct_clear(&e->mdct);
  for(i=0;i<VE_BANDS;i++)
    _ogg_free(e->band[i].window);
  _ogg_free(e->mdct_win);
  _ogg_free(e->filter);
  _ogg_free(e->mark);
  memset(e,0,sizeof(*e));
}
