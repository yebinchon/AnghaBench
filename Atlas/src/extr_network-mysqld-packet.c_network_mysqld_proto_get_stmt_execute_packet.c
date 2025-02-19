
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int network_packet ;
struct TYPE_12__ {int is_null; int is_unsigned; } ;
typedef TYPE_1__ network_mysqld_type_t ;
struct TYPE_13__ {int params; scalar_t__ new_params_bound; int iteration_count; scalar_t__ flags; int stmt_id; } ;
typedef TYPE_2__ network_mysqld_stmt_execute_packet_t ;
typedef int guint16 ;
typedef int guint ;
typedef int gsize ;
struct TYPE_14__ {int* str; } ;
typedef TYPE_3__ GString ;


 int G_STRLOC ;
 int TRUE ;
 int g_critical (char*,int ,int) ;
 int g_ptr_array_add (int ,TYPE_1__*) ;
 TYPE_1__* g_ptr_array_index (int ,int) ;
 int g_string_free (TYPE_3__*,int ) ;
 TYPE_3__* g_string_sized_new (int) ;
 scalar_t__ network_mysqld_proto_binary_get_type (int *,TYPE_1__*) ;
 scalar_t__ network_mysqld_proto_get_gstring_len (int *,int,TYPE_3__*) ;
 scalar_t__ network_mysqld_proto_get_int16 (int *,int*) ;
 scalar_t__ network_mysqld_proto_get_int32 (int *,int *) ;
 scalar_t__ network_mysqld_proto_get_int8 (int *,scalar_t__*) ;
 scalar_t__ network_mysqld_proto_get_stmt_execute_packet_stmt_id (int *,int *) ;
 TYPE_1__* network_mysqld_type_new (int) ;

int network_mysqld_proto_get_stmt_execute_packet(network_packet *packet,
  network_mysqld_stmt_execute_packet_t *stmt_execute_packet,
  guint param_count) {
 int err = 0;
 GString *nul_bits;
 gsize nul_bits_len;

 err = err || network_mysqld_proto_get_stmt_execute_packet_stmt_id(packet, &stmt_execute_packet->stmt_id);
 err = err || network_mysqld_proto_get_int8(packet, &stmt_execute_packet->flags);
 err = err || network_mysqld_proto_get_int32(packet, &stmt_execute_packet->iteration_count);

 if (0 == param_count) {
  return err ? -1 : 0;
 }

 nul_bits_len = (param_count + 7) / 8;
 nul_bits = g_string_sized_new(nul_bits_len);
 err = err || network_mysqld_proto_get_gstring_len(packet, nul_bits_len, nul_bits);
 err = err || network_mysqld_proto_get_int8(packet, &stmt_execute_packet->new_params_bound);

 if (0 != err) {
  g_string_free(nul_bits, TRUE);

  return -1;
 }

 if (stmt_execute_packet->new_params_bound) {
  guint i;

  for (i = 0; 0 == err && i < param_count; i++) {
   guint16 param_type;

   err = err || network_mysqld_proto_get_int16(packet, &param_type);

   if (0 == err) {
    network_mysqld_type_t *param;

    param = network_mysqld_type_new(param_type & 0xff);
    if (((void*)0) == param) {
     g_critical("%s: couldn't create type = %d", G_STRLOC, param_type & 0xff);

     err = -1;
     break;
    }
    param->is_null = (nul_bits->str[i / 8] & (1 << (i % 8))) != 0;
    param->is_unsigned = (param_type & 0x8000) != 0;

    g_ptr_array_add(stmt_execute_packet->params, param);
   }
  }

  for (i = 0; 0 == err && i < param_count; i++) {
   network_mysqld_type_t *param = g_ptr_array_index(stmt_execute_packet->params, i);

   if (!param->is_null) {
    err = err || network_mysqld_proto_binary_get_type(packet, param);
   }
  }
 }

 g_string_free(nul_bits, TRUE);

 return err ? -1 : 0;
}
