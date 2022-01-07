
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ version; TYPE_1__* errmsg; TYPE_2__* sqlstate; int errcode; } ;
typedef TYPE_3__ network_mysqld_err_packet_t ;
struct TYPE_6__ {scalar_t__ len; int str; } ;
struct TYPE_5__ {int len; int str; } ;
typedef int GString ;


 int C (char*) ;
 scalar_t__ NETWORK_MYSQLD_PROTOCOL_VERSION_41 ;
 int g_string_append_c (int *,char) ;
 int g_string_append_len (int *,int ,...) ;
 int network_mysqld_proto_append_int16 (int *,int ) ;
 int network_mysqld_proto_append_int8 (int *,int) ;

int network_mysqld_proto_append_err_packet(GString *packet, network_mysqld_err_packet_t *err_packet) {
 int errmsg_len;

 network_mysqld_proto_append_int8(packet, 0xff);
 network_mysqld_proto_append_int16(packet, err_packet->errcode);
 if (err_packet->version == NETWORK_MYSQLD_PROTOCOL_VERSION_41) {
  g_string_append_c(packet, '#');
  if (err_packet->sqlstate && (err_packet->sqlstate->len > 0)) {
   g_string_append_len(packet, err_packet->sqlstate->str, 5);
  } else {
   g_string_append_len(packet, C("07000"));
  }
 }

 errmsg_len = err_packet->errmsg->len;
 if (errmsg_len >= 512) errmsg_len = 512;
 g_string_append_len(packet, err_packet->errmsg->str, errmsg_len);

 return 0;
}
