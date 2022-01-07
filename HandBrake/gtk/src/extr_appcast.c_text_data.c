
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int description; int item; int tag_stack; } ;
typedef TYPE_1__ parse_data_t ;
typedef int gsize ;
typedef scalar_t__ gpointer ;
typedef int gint ;
typedef int gchar ;
typedef int GMarkupParseContext ;
typedef int GError ;



 int g_free (int ) ;
 scalar_t__ g_queue_peek_head (int ) ;
 int g_strdup (int const*) ;
 int g_string_append (int ,int const*) ;

__attribute__((used)) static void
text_data(
    GMarkupParseContext *ctx,
    const gchar *text,
    gsize len,
    gpointer ud,
    GError **error)
{
    parse_data_t *pd = (parse_data_t*)ud;
    union
    {
        gint id;
        gpointer pid;
    } start_id;

    start_id.pid = g_queue_peek_head(pd->tag_stack);
    switch (start_id.id)
    {
        case 128:
        {
            if (pd->item)
            {
                g_string_append(pd->description, text);
            }
        } break;
        default:
        {
            if (pd->value) g_free(pd->value);
            pd->value = g_strdup(text);
        } break;
    }
}
