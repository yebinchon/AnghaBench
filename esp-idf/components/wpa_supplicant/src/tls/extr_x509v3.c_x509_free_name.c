
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x509_name {size_t num_attr; int rid; scalar_t__ ip_len; int * ip; int * uri; int * dns; int * alt_email; int * email; TYPE_1__* attr; } ;
struct TYPE_2__ {int type; int * value; } ;


 int X509_NAME_ATTR_NOT_USED ;
 int os_free (int *) ;
 int os_memset (int *,int ,int) ;

__attribute__((used)) static void x509_free_name(struct x509_name *name)
{
 size_t i;

 for (i = 0; i < name->num_attr; i++) {
  os_free(name->attr[i].value);
  name->attr[i].value = ((void*)0);
  name->attr[i].type = X509_NAME_ATTR_NOT_USED;
 }
 name->num_attr = 0;
 os_free(name->email);
 name->email = ((void*)0);

 os_free(name->alt_email);
 os_free(name->dns);
 os_free(name->uri);
 os_free(name->ip);
 name->alt_email = name->dns = name->uri = ((void*)0);
 name->ip = ((void*)0);
 name->ip_len = 0;
 os_memset(&name->rid, 0, sizeof(name->rid));
}
