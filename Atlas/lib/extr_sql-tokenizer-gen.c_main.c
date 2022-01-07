
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gint ;
typedef int gboolean ;
typedef int GTree ;
typedef int GCompareFunc ;


 int GINT_TO_POINTER (scalar_t__) ;
 int TRUE ;
 scalar_t__ g_ascii_strcasecmp ;
 int g_tree_destroy (int *) ;
 int g_tree_foreach (int *,int ,int *) ;
 int g_tree_insert (int *,int,int ) ;
 int * g_tree_new (int ) ;
 int printf (char*) ;
 scalar_t__ sql_token_get_last_id () ;
 int sql_token_get_name (scalar_t__,int *) ;
 scalar_t__ strncmp (int,char*,int) ;
 int trav ;

int main() {
 GTree *tokens;
 gboolean is_first = TRUE;
 gint i;

 tokens = g_tree_new((GCompareFunc)g_ascii_strcasecmp);

 for (i = 0; i < sql_token_get_last_id(); i++) {

  if (0 != strncmp(sql_token_get_name(i, ((void*)0)), "TK_SQL_", sizeof("TK_SQL_") - 1)) continue;

  g_tree_insert(tokens, (sql_token_get_name(i, ((void*)0)) + sizeof("TK_SQL_") - 1), GINT_TO_POINTER(i));
 }


 printf("static int sql_keywords[] = {");
 g_tree_foreach(tokens, trav, &is_first);
 printf("\n};\n");

 printf("int *sql_keywords_get() { return sql_keywords; }\n");
 printf("int sql_keywords_get_count() { return sizeof(sql_keywords) / sizeof(sql_keywords[0]); }\n");

 g_tree_destroy(tokens);

 return 0;
}
