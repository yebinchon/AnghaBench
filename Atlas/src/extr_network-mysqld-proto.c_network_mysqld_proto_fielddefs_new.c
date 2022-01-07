
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GPtrArray ;


 int * g_ptr_array_new () ;

GPtrArray *network_mysqld_proto_fielddefs_new(void) {
 GPtrArray *fields;

 fields = g_ptr_array_new();

 return fields;
}
