
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int packet; } ;
typedef TYPE_1__ ogg_packet ;


 int OGG_SUCCESS ;
 int memset (TYPE_1__*,int ,int) ;
 int ogg_buffer_release (int ) ;

int ogg_packet_release(ogg_packet *op) {
  if(op){
    ogg_buffer_release(op->packet);
    memset(op, 0, sizeof(*op));
  }
  return OGG_SUCCESS;
}
