
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gchar ;
typedef int GString ;
typedef int GHashTable ;


 int S (int *) ;
 int g_hash_table_insert (int *,int ,int ) ;
 int g_strdup (int *) ;
 int g_string_new_len (int ) ;

void copy_pwd(gchar *key, GString *value, GHashTable *table) {
 g_hash_table_insert(table, g_strdup(key), g_string_new_len(S(value)));
}
