
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gconstpointer ;
typedef int gboolean ;


 int g_string_equal (int ,int ) ;

gboolean g_hash_table_string_equal(gconstpointer _a, gconstpointer _b) {
 return g_string_equal(_a, _b);
}
