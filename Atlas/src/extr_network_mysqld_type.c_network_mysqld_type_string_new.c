
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int network_mysqld_type_string_t ;


 int * g_string_new (int *) ;

__attribute__((used)) static network_mysqld_type_string_t *network_mysqld_type_string_new(void) {
 network_mysqld_type_string_t *str;

 str = g_string_new(((void*)0));

 return str;
}
