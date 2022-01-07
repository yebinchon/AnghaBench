
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_type_string_t ;


 int TRUE ;
 int g_string_free (int *,int ) ;

__attribute__((used)) static void network_mysqld_type_string_free(network_mysqld_type_string_t *str) {
 if (((void*)0) == str) return;

 g_string_free(str, TRUE);
}
