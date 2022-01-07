
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int z_streamp ;
struct TYPE_5__ {struct TYPE_5__* hufts; struct TYPE_5__* window; } ;
typedef TYPE_1__ inflate_blocks_statef ;


 int Tracev (char*) ;
 int ZFREE (int ,TYPE_1__*) ;
 int Z_NULL ;
 int Z_OK ;
 int inflate_blocks_reset (TYPE_1__*,int ,int ) ;

int inflate_blocks_free(inflate_blocks_statef *s, z_streamp z)
{
  inflate_blocks_reset(s, z, Z_NULL);
  ZFREE(z, s->window);
  ZFREE(z, s->hufts);
  ZFREE(z, s);
  Tracev(("inflate:   blocks freed\n"));
  return Z_OK;
}
