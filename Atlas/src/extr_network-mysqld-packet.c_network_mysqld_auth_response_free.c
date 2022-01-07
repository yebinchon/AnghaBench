
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ database; scalar_t__ username; scalar_t__ response; } ;
typedef TYPE_1__ network_mysqld_auth_response ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_string_free (scalar_t__,int ) ;

void network_mysqld_auth_response_free(network_mysqld_auth_response *auth) {
 if (!auth) return;

 if (auth->response) g_string_free(auth->response, TRUE);
 if (auth->username) g_string_free(auth->username, TRUE);
 if (auth->database) g_string_free(auth->database, TRUE);

 g_free(auth);
}
