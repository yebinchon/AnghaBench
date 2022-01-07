
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* y; unsigned char u; unsigned char v; } ;
typedef TYPE_2__ roq_cell ;
struct TYPE_8__ {TYPE_1__* current_frame; } ;
struct TYPE_6__ {int* linesize; unsigned char** data; } ;
typedef TYPE_3__ RoqContext ;



void ff_apply_vector_2x2(RoqContext *ri, int x, int y, roq_cell *cell)
{
    unsigned char *bptr;
    int boffs,stride;

    stride = ri->current_frame->linesize[0];
    boffs = y*stride + x;

    bptr = ri->current_frame->data[0] + boffs;
    bptr[0 ] = cell->y[0];
    bptr[1 ] = cell->y[1];
    bptr[stride ] = cell->y[2];
    bptr[stride+1] = cell->y[3];

    stride = ri->current_frame->linesize[1];
    boffs = y*stride + x;

    bptr = ri->current_frame->data[1] + boffs;
    bptr[0 ] =
    bptr[1 ] =
    bptr[stride ] =
    bptr[stride+1] = cell->u;

    bptr = ri->current_frame->data[2] + boffs;
    bptr[0 ] =
    bptr[1 ] =
    bptr[stride ] =
    bptr[stride+1] = cell->v;
}
