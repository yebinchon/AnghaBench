
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct TYPE_8__ {struct TYPE_8__* state; struct TYPE_8__* blocks; struct TYPE_8__* zfree; } ;


 int Tracev (char*) ;
 int ZFREE (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* Z_NULL ;
 int Z_OK ;
 int Z_STREAM_ERROR ;
 int inflate_blocks_free (TYPE_1__*,TYPE_1__*) ;

int inflateEnd(z_streamp z)
{
  if (z == Z_NULL || z->state == Z_NULL || z->zfree == Z_NULL)
    return Z_STREAM_ERROR;
  if (z->state->blocks != Z_NULL)
    inflate_blocks_free(z->state->blocks, z);
  ZFREE(z, z->state);
  z->state = Z_NULL;
  Tracev(("inflate: end\n"));
  return Z_OK;
}
