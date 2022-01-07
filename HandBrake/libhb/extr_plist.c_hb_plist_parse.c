
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int error; int warning; int characters; int endElement; int startElement; int initialized; } ;
typedef TYPE_1__ xmlSAXHandler ;
typedef int parser ;
struct TYPE_7__ {int * plist; void* tag_stack; void* stack; int * value; int * key; scalar_t__ closed_top; } ;
typedef TYPE_2__ parse_data_t ;
typedef int hb_value_t ;


 int XML_SAX2_MAGIC ;
 int end_element ;
 int free (int *) ;
 int hb_error (char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int parse_error ;
 int parse_warning ;
 int queue_free (void**) ;
 void* queue_new () ;
 int start_element ;
 int text_data ;
 int xmlCleanupParser () ;
 int xmlSAXUserParseMemory (TYPE_1__*,TYPE_2__*,char const*,size_t) ;

hb_value_t*
hb_plist_parse(const char *buf, size_t len)
{
    xmlSAXHandler parser;
    parse_data_t pd;

    pd.stack = queue_new();
    pd.tag_stack = queue_new();
    pd.key = ((void*)0);
    pd.value = ((void*)0);
    pd.plist = ((void*)0);
    pd.closed_top = 0;

    memset(&parser, 0, sizeof(parser));
    parser.initialized = XML_SAX2_MAGIC;
    parser.startElement = start_element;
    parser.endElement = end_element;
    parser.characters = text_data;
    parser.warning = parse_warning;
    parser.error = parse_error;
    int result = xmlSAXUserParseMemory(&parser, &pd, buf, len);
    if (result != 0)
    {
        hb_error("Plist parse failed");
        return ((void*)0);
    }
    xmlCleanupParser();

    if (pd.key) free(pd.key);
    if (pd.value) free(pd.value);
    queue_free(&pd.stack);
    queue_free(&pd.tag_stack);

    return pd.plist;
}
