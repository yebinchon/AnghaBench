
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ogg_stream_state ;
struct TYPE_5__ {int granulepos; int e_o_s; int bytes; int packet; } ;
typedef TYPE_1__ ogg_packet ;
struct TYPE_6__ {int iov_len; int iov_base; } ;
typedef TYPE_2__ ogg_iovec_t ;


 int ogg_stream_iovecin (int *,TYPE_2__*,int,int ,int ) ;

int ogg_stream_packetin(ogg_stream_state *os,ogg_packet *op){
  ogg_iovec_t iov;
  iov.iov_base = op->packet;
  iov.iov_len = op->bytes;
  return ogg_stream_iovecin(os, &iov, 1, op->e_o_s, op->granulepos);
}
