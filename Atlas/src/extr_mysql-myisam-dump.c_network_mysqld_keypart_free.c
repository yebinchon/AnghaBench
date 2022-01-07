
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_keypart ;


 int g_free (int *) ;

void network_mysqld_keypart_free(network_mysqld_keypart *keypart) {
 if (!keypart) return;

 g_free(keypart);
}
