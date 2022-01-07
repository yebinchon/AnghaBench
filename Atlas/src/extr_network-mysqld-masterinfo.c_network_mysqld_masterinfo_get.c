
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int master_lines; int master_log_pos; int master_port; int master_connect_retry; int master_ssl; int master_ssl_verify_server_cert; int master_ssl_key; int master_ssl_cipher; int master_ssl_cert; int master_ssl_capath; int master_ssl_ca; int master_password; int master_user; int master_host; int master_log_file; } ;
typedef TYPE_1__ network_packet ;
typedef TYPE_1__ network_mysqld_masterinfo_t ;


 int g_return_val_if_fail (TYPE_1__*,int) ;
 scalar_t__ network_mysqld_masterinfo_get_int32 (TYPE_1__*,int*) ;
 scalar_t__ network_mysqld_masterinfo_get_string (TYPE_1__*,int ) ;

int network_mysqld_masterinfo_get(network_packet *packet, network_mysqld_masterinfo_t *info) {
 int err = 0;

 g_return_val_if_fail(info, -1);
 g_return_val_if_fail(packet, -1);



        err = err || network_mysqld_masterinfo_get_int32(packet, &(info->master_lines));
        err = err || network_mysqld_masterinfo_get_string(packet, info->master_log_file);
 err = err || network_mysqld_masterinfo_get_int32(packet, &(info->master_log_pos));
 err = err || network_mysqld_masterinfo_get_string(packet, info->master_host);
 err = err || network_mysqld_masterinfo_get_string(packet, info->master_user);
 err = err || network_mysqld_masterinfo_get_string(packet, info->master_password);
 err = err || network_mysqld_masterinfo_get_int32(packet, &(info->master_port));
 err = err || network_mysqld_masterinfo_get_int32(packet, &(info->master_connect_retry));
 err = err || network_mysqld_masterinfo_get_int32(packet, &(info->master_ssl));
 err = err || network_mysqld_masterinfo_get_string(packet, info->master_ssl_ca);
 err = err || network_mysqld_masterinfo_get_string(packet, info->master_ssl_capath);
 err = err || network_mysqld_masterinfo_get_string(packet, info->master_ssl_cert);
 err = err || network_mysqld_masterinfo_get_string(packet, info->master_ssl_cipher);
 err = err || network_mysqld_masterinfo_get_string(packet, info->master_ssl_key);
 if (info->master_lines >= 15) {
  err = err || network_mysqld_masterinfo_get_int32(packet, &(info->master_ssl_verify_server_cert));
 }
 return err ? -1 : 0;
}
