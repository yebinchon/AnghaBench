
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ mpc_int32_t ;
struct TYPE_4__ {int count; scalar_t__ buff; } ;
struct TYPE_5__ {TYPE_1__ bits_reader; scalar_t__ buffer; scalar_t__ bytes_total; } ;
typedef TYPE_2__ mpc_demux ;



__attribute__((used)) static mpc_int32_t mpc_unread_bytes_unchecked(mpc_demux * d) {
 return d->bytes_total + d->buffer - d->bits_reader.buff - ((8 - d->bits_reader.count) >> 3);
}
