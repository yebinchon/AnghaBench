
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; int buff; } ;
struct TYPE_5__ {scalar_t__ block_frames; scalar_t__ block_bits; TYPE_1__ bits_reader; int buffer; scalar_t__ bytes_total; } ;
typedef TYPE_2__ mpc_demux ;



__attribute__((used)) static void mpc_demux_clear_buff(mpc_demux * d)
{
 d->bytes_total = 0;
 d->bits_reader.buff = d->buffer;
 d->bits_reader.count = 8;
 d->block_bits = 0;
 d->block_frames = 0;
}
