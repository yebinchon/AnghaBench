
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* challenge; } ;
typedef TYPE_1__ network_mysqld_auth_challenge ;
typedef int guint ;
struct TYPE_5__ {double* str; int len; } ;


 double RAND_MAX ;
 int g_string_set_size (TYPE_3__*,int) ;
 double rand () ;

void network_mysqld_auth_challenge_set_challenge(network_mysqld_auth_challenge *shake) {
 guint i;



 g_string_set_size(shake->challenge, 21);

 for (i = 0; i < 20; i++) {
  shake->challenge->str[i] = (94.0 * (rand() / (RAND_MAX + 1.0))) + 33;
 }

 shake->challenge->len = 20;
 shake->challenge->str[shake->challenge->len] = '\0';
}
