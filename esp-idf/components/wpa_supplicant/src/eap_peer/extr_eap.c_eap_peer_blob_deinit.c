
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_config_blob {int dummy; } ;
struct TYPE_3__ {int * ca_cert; int * private_key; int * client_cert; } ;
struct eap_sm {TYPE_1__ config; TYPE_2__* blob; } ;
struct TYPE_4__ {int * name; } ;


 int BLOB_NUM ;
 int os_bzero (TYPE_2__*,int) ;
 int os_free (int *) ;

void eap_peer_blob_deinit(struct eap_sm *sm)
{
 int i;
 for (i = 0; i < BLOB_NUM; i++) {
  if (sm->blob[i].name) {
   os_free(sm->blob[i].name);
   sm->blob[i].name = ((void*)0);
  }
 }
 os_bzero(&sm->blob[0], sizeof(struct wpa_config_blob)*BLOB_NUM);

 sm->config.client_cert = ((void*)0);
 sm->config.private_key = ((void*)0);
 sm->config.ca_cert = ((void*)0);
}
