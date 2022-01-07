
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int z_streamp ;
typedef int uInt ;
struct inflate_blocks_state {int dummy; } ;
struct TYPE_9__ {int mode; int checkfn; struct TYPE_9__* window; struct TYPE_9__* end; struct TYPE_9__* hufts; } ;
typedef TYPE_1__ inflate_huft ;
typedef TYPE_1__ inflate_blocks_statef ;
typedef int check_func ;
typedef TYPE_1__ Byte ;


 int MANY ;
 int TYPE ;
 int Tracev (char*) ;
 scalar_t__ ZALLOC (int ,int,int) ;
 int ZFREE (int ,TYPE_1__*) ;
 TYPE_1__* Z_NULL ;
 int inflate_blocks_reset (TYPE_1__*,int ,TYPE_1__*) ;

inflate_blocks_statef *inflate_blocks_new(z_streamp z, check_func c, uInt w)
{
  inflate_blocks_statef *s;

  if ((s = (inflate_blocks_statef *)ZALLOC
       (z,1,sizeof(struct inflate_blocks_state))) == Z_NULL)
    return s;
  if ((s->hufts =
       (inflate_huft *)ZALLOC(z, sizeof(inflate_huft), MANY)) == Z_NULL)
  {
    ZFREE(z, s);
    return Z_NULL;
  }
  if ((s->window = (Byte *)ZALLOC(z, 1, w)) == Z_NULL)
  {
    ZFREE(z, s->hufts);
    ZFREE(z, s);
    return Z_NULL;
  }
  s->end = s->window + w;
  s->checkfn = c;
  s->mode = TYPE;
  Tracev(("inflate:   blocks allocated\n"));
  inflate_blocks_reset(s, z, Z_NULL);
  return s;
}
