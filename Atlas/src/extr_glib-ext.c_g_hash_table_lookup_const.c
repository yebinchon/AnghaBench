
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gsize ;
typedef int gpointer ;
typedef int gchar ;
struct TYPE_3__ {char* str; int len; } ;
typedef TYPE_1__ GString ;
typedef int GHashTable ;


 int g_hash_table_lookup (int *,TYPE_1__*) ;

gpointer g_hash_table_lookup_const(GHashTable *h, const gchar *name, gsize name_len) {
 GString key;

 key.str = (char *)name;
 key.len = name_len;

 return g_hash_table_lookup(h, &key);
}
