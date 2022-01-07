
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config_blob {int * name; } ;
struct eap_sm {struct wpa_config_blob const* blob; } ;


 int BLOB_NAME_LEN ;
 int BLOB_NUM ;
 scalar_t__ os_strncmp (char const*,int *,int ) ;

const struct wpa_config_blob * eap_get_config_blob(struct eap_sm *sm,
         const char *name)
{
 int i;

 if (!sm)
  return ((void*)0);

 for (i = 0; i < BLOB_NUM; i++) {
  if (sm->blob[i].name == ((void*)0))
   continue;
  if (os_strncmp(name, sm->blob[i].name, BLOB_NAME_LEN) == 0) {
   return &sm->blob[i];
  }
 }
 return ((void*)0);
}
