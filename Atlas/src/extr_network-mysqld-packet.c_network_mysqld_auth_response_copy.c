
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int database; int response; int username; int charset; int max_packet_size; int capabilities; } ;
typedef TYPE_1__ network_mysqld_auth_response ;


 int S (int ) ;
 int g_string_assign_len (int ,int ) ;
 TYPE_1__* network_mysqld_auth_response_new () ;

network_mysqld_auth_response *network_mysqld_auth_response_copy(network_mysqld_auth_response *src) {
 network_mysqld_auth_response *dst;

 if (!src) return ((void*)0);

 dst = network_mysqld_auth_response_new();
 dst->capabilities = src->capabilities;
 dst->max_packet_size = src->max_packet_size;
 dst->charset = src->charset;
 g_string_assign_len(dst->username, S(src->username));
 g_string_assign_len(dst->response, S(src->response));
 g_string_assign_len(dst->database, S(src->database));

 return dst;
}
