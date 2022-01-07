
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; } ;
typedef TYPE_1__ parse_data_t ;
typedef int gsize ;
typedef scalar_t__ gpointer ;
typedef int gchar ;
typedef int GMarkupParseContext ;
typedef int GError ;


 int g_free (scalar_t__) ;
 scalar_t__ g_strdup (int const*) ;

__attribute__((used)) static void
text_data(
    GMarkupParseContext *ctx,
    const gchar *text,
    gsize len,
    gpointer ud,
    GError **error)
{
    parse_data_t *pd = (parse_data_t*)ud;
    if (pd->value) g_free(pd->value);
    pd->value = g_strdup(text);
}
