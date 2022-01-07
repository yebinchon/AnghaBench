
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int z_streamp ;
typedef scalar_t__ uInt ;
struct inflate_codes_state {int dummy; } ;
typedef int inflate_huft ;
struct TYPE_4__ {int * dtree; int * ltree; void* dbits; void* lbits; int mode; } ;
typedef TYPE_1__ inflate_codes_statef ;
typedef void* Byte ;


 int START ;
 int Tracev (char*) ;
 scalar_t__ ZALLOC (int ,int,int) ;
 TYPE_1__* Z_NULL ;

inflate_codes_statef *inflate_codes_new(uInt bl, uInt bd, inflate_huft *tl, inflate_huft *td, z_streamp z)
{
  inflate_codes_statef *c;

  if ((c = (inflate_codes_statef *)
       ZALLOC(z,1,sizeof(struct inflate_codes_state))) != Z_NULL)
  {
    c->mode = START;
    c->lbits = (Byte)bl;
    c->dbits = (Byte)bd;
    c->ltree = tl;
    c->dtree = td;
    Tracev(("inflate:       codes new\n"));
  }
  return c;
}
