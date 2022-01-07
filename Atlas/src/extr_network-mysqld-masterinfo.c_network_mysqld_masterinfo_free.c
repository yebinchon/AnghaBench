
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int master_ssl_key; int master_ssl_cipher; int master_ssl_cert; int master_ssl_capath; int master_ssl_ca; int master_password; int master_user; int master_host; int master_log_file; } ;
typedef TYPE_1__ network_mysqld_masterinfo_t ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_string_free (int ,int ) ;

void network_mysqld_masterinfo_free(network_mysqld_masterinfo_t *info) {
 if (!info) return;

 g_string_free(info->master_log_file, TRUE);
 g_string_free(info->master_host, TRUE);
 g_string_free(info->master_user, TRUE);
 g_string_free(info->master_password, TRUE);

 g_string_free(info->master_ssl_ca, TRUE);
 g_string_free(info->master_ssl_capath, TRUE);
 g_string_free(info->master_ssl_cert, TRUE);
 g_string_free(info->master_ssl_cipher, TRUE);
 g_string_free(info->master_ssl_key, TRUE);

 g_free(info);
}
