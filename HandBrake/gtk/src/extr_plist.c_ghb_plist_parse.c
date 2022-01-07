
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * plist; void* tag_stack; void* stack; int * value; int * key; int closed_top; } ;
typedef TYPE_1__ parse_data_t ;
typedef int gssize ;
typedef int gchar ;
struct TYPE_6__ {int error; int passthrough; int text; int end_element; int start_element; } ;
typedef int GhbValue ;
typedef TYPE_2__ GMarkupParser ;
typedef int GMarkupParseContext ;
typedef int GError ;


 int FALSE ;
 int destroy_notify ;
 int end_element ;
 int g_free (int *) ;
 int g_markup_parse_context_end_parse (int *,int **) ;
 int g_markup_parse_context_free (int *) ;
 int * g_markup_parse_context_new (TYPE_2__*,int ,TYPE_1__*,int ) ;
 int g_markup_parse_context_parse (int *,int const*,int ,int **) ;
 int g_queue_free (void*) ;
 void* g_queue_new () ;
 int parse_error ;
 int passthrough ;
 int start_element ;
 int text_data ;

GhbValue*
ghb_plist_parse(const gchar *buf, gssize len)
{
    GMarkupParseContext *ctx;
    GMarkupParser parser;
    parse_data_t pd;
    GError *err = ((void*)0);

    pd.stack = g_queue_new();
    pd.tag_stack = g_queue_new();
    pd.key = ((void*)0);
    pd.value = ((void*)0);
    pd.plist = ((void*)0);
    pd.closed_top = FALSE;

    parser.start_element = start_element;
    parser.end_element = end_element;
    parser.text = text_data;
    parser.passthrough = passthrough;
    parser.error = parse_error;
    ctx = g_markup_parse_context_new(&parser, 0, &pd, destroy_notify);

    g_markup_parse_context_parse(ctx, buf, len, &err);
    g_markup_parse_context_end_parse(ctx, &err);
    g_markup_parse_context_free(ctx);
    if (pd.key) g_free(pd.key);
    if (pd.value) g_free(pd.value);
    g_queue_free(pd.stack);
    g_queue_free(pd.tag_stack);
    return pd.plist;
}
