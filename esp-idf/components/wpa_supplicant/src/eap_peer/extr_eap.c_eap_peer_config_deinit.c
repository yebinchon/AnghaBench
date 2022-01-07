
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int new_password; int password; int identity; int anonymous_identity; } ;
struct eap_sm {TYPE_1__ config; } ;
struct eap_peer_config {int dummy; } ;


 int os_bzero (TYPE_1__*,int) ;
 int os_free (int ) ;

void eap_peer_config_deinit(struct eap_sm *sm)
{
 if (!sm)
  return;

 os_free(sm->config.anonymous_identity);
 os_free(sm->config.identity);
 os_free(sm->config.password);
 os_free(sm->config.new_password);
 os_bzero(&sm->config, sizeof(struct eap_peer_config));
}
