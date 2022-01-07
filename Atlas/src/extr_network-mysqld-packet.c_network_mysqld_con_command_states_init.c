
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ offset; } ;
typedef TYPE_2__ network_packet ;
struct TYPE_9__ {int data; void* data_free; int command; } ;
struct TYPE_11__ {int com_quit_seen; TYPE_1__ parse; } ;
typedef TYPE_3__ network_mysqld_con ;
typedef int guint8 ;
typedef void* GDestroyNotify ;
 int TRUE ;
 int network_mysqld_com_init_db_result_free ;
 int network_mysqld_com_init_db_result_new () ;
 int network_mysqld_com_init_db_result_track_state (TYPE_2__*,int ) ;
 int network_mysqld_com_query_result_free ;
 int network_mysqld_com_query_result_new () ;
 int network_mysqld_com_stmt_prepare_result_free ;
 int network_mysqld_com_stmt_prepare_result_new () ;
 scalar_t__ network_mysqld_proto_get_int8 (TYPE_2__*,int *) ;
 scalar_t__ network_mysqld_proto_skip_network_header (TYPE_2__*) ;

int network_mysqld_con_command_states_init(network_mysqld_con *con, network_packet *packet) {
 guint8 cmd;
 int err = 0;

 err = err || network_mysqld_proto_skip_network_header(packet);
 err = err || network_mysqld_proto_get_int8(packet, &cmd);

 if (err) return -1;

 con->parse.command = cmd;

 packet->offset = 0;


 switch (con->parse.command) {
 case 131:
 case 132:
 case 129:
  con->parse.data = network_mysqld_com_query_result_new();
  con->parse.data_free = (GDestroyNotify)network_mysqld_com_query_result_free;
  break;
 case 128:
  con->parse.data = network_mysqld_com_stmt_prepare_result_new();
  con->parse.data_free = (GDestroyNotify)network_mysqld_com_stmt_prepare_result_free;
  break;
 case 133:
  con->parse.data = network_mysqld_com_init_db_result_new();
  con->parse.data_free = (GDestroyNotify)network_mysqld_com_init_db_result_free;

  network_mysqld_com_init_db_result_track_state(packet, con->parse.data);

  break;
 case 130:





  con->com_quit_seen = TRUE;
 default:
  break;
 }

 return 0;
}
