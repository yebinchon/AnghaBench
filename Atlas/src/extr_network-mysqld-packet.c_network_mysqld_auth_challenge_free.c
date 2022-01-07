
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ challenge; struct TYPE_4__* server_version_str; } ;
typedef TYPE_1__ network_mysqld_auth_challenge ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_string_free (scalar_t__,int ) ;

void network_mysqld_auth_challenge_free(network_mysqld_auth_challenge *shake) {
 if (!shake) return;

 if (shake->server_version_str) g_free(shake->server_version_str);
 if (shake->challenge) g_string_free(shake->challenge, TRUE);

 g_free(shake);
}
