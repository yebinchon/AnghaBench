
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mpc_seek_t ;
struct TYPE_5__ {int buff; int count; } ;
struct TYPE_6__ {int bytes_total; int buffer; TYPE_1__ bits_reader; TYPE_3__* r; } ;
typedef TYPE_2__ mpc_demux ;
struct TYPE_7__ {scalar_t__ (* tell ) (TYPE_3__*) ;} ;


 scalar_t__ stub1 (TYPE_3__*) ;

mpc_seek_t mpc_demux_pos(mpc_demux * d)
{
 return (((mpc_seek_t)(d->r->tell(d->r)) - d->bytes_total +
          d->bits_reader.buff - d->buffer) << 3) + 8 - d->bits_reader.count;
}
