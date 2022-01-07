
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* version; scalar_t__* build; int description; int tag_stack; int * value; int * key; int item; } ;
typedef TYPE_1__ parse_data_t ;
typedef int gint ;
typedef scalar_t__ gchar ;
struct TYPE_6__ {int error; int passthrough; int text; int end_element; int start_element; } ;
typedef TYPE_2__ GMarkupParser ;
typedef int GMarkupParseContext ;
typedef int GError ;


 int FALSE ;
 int G_MARKUP_TREAT_CDATA_AS_TEXT ;
 int destroy_notify ;
 int end_element ;
 int g_markup_parse_context_end_parse (int *,int **) ;
 int g_markup_parse_context_free (int *) ;
 int * g_markup_parse_context_new (TYPE_2__*,int ,TYPE_1__*,int ) ;
 int g_markup_parse_context_parse (int *,scalar_t__*,int ,int **) ;
 int g_queue_free (int ) ;
 int g_queue_new () ;
 scalar_t__* g_string_free (int ,int ) ;
 int g_string_new (char*) ;
 scalar_t__* g_strrstr (scalar_t__*,char*) ;
 int parse_error ;
 int passthrough ;
 int start_element ;
 int strlen (scalar_t__*) ;
 scalar_t__* strstr (scalar_t__*,char*) ;
 int text_data ;

void
ghb_appcast_parse(gchar *buf, gchar **desc, gchar **build, gchar **version)
{
    GMarkupParseContext *ctx;
    GMarkupParser parser;
    parse_data_t pd;
    GError *err = ((void*)0);
    gint len;
    gchar *start;



    start = strstr(buf, "<?xml ");
    pd.description = g_string_new("");
    pd.item = FALSE;
    pd.build = ((void*)0);
    pd.version = ((void*)0);
    len = strlen(start);
    pd.tag_stack = g_queue_new();
    pd.key = ((void*)0);
    pd.value = ((void*)0);

    parser.start_element = start_element;
    parser.end_element = end_element;
    parser.text = text_data;
    parser.passthrough = passthrough;
    parser.error = parse_error;
    ctx = g_markup_parse_context_new(
            &parser, G_MARKUP_TREAT_CDATA_AS_TEXT, &pd, destroy_notify);

    g_markup_parse_context_parse(ctx, start, len, &err);
    g_markup_parse_context_end_parse(ctx, &err);
    g_markup_parse_context_free(ctx);
    g_queue_free(pd.tag_stack);
    *desc = g_string_free(pd.description, FALSE);

    gchar *glitch;
    glitch = g_strrstr(*desc, "]]>");
    if (glitch)
        *glitch = 0;
    *build = pd.build;
    *version = pd.version;
}
