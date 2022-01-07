
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct TYPE_6__ {int blocks; struct TYPE_6__* state; scalar_t__ nowrap; int mode; struct TYPE_6__* msg; scalar_t__ total_out; scalar_t__ total_in; } ;


 int Tracev (char*) ;
 TYPE_1__* Z_NULL ;
 int Z_OK ;
 int Z_STREAM_ERROR ;
 int imBLOCKS ;
 int imMETHOD ;
 int inflate_blocks_reset (int ,TYPE_1__*,TYPE_1__*) ;

int inflateReset(z_streamp z)
{
  if (z == Z_NULL || z->state == Z_NULL)
    return Z_STREAM_ERROR;
  z->total_in = z->total_out = 0;
  z->msg = Z_NULL;
  z->state->mode = z->state->nowrap ? imBLOCKS : imMETHOD;
  inflate_blocks_reset(z->state->blocks, z, Z_NULL);
  Tracev(("inflate: reset\n"));
  return Z_OK;
}
