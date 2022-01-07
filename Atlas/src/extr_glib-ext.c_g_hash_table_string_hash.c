
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guint ;
typedef int gconstpointer ;


 int g_string_hash (int ) ;

guint g_hash_table_string_hash(gconstpointer _key) {
 return g_string_hash(_key);
}
