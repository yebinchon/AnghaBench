
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef int xmlChar ;
struct TYPE_11__ {int metadata; } ;
struct TYPE_10__ {int name; } ;
typedef TYPE_2__ AVFormatContext ;


 int av_dict_set (int *,char*,int *,int ) ;
 int av_strcasecmp (int ,char*) ;
 TYPE_1__* xmlFirstElementChild (TYPE_1__*) ;
 int xmlFree (int *) ;
 TYPE_1__* xmlNextElementSibling (TYPE_1__*) ;
 int * xmlNodeGetContent (TYPE_1__*) ;

__attribute__((used)) static int parse_programinformation(AVFormatContext *s, xmlNodePtr node)
{
    xmlChar *val = ((void*)0);

    node = xmlFirstElementChild(node);
    while (node) {
        if (!av_strcasecmp(node->name, "Title")) {
            val = xmlNodeGetContent(node);
            if (val) {
                av_dict_set(&s->metadata, "Title", val, 0);
            }
        } else if (!av_strcasecmp(node->name, "Source")) {
            val = xmlNodeGetContent(node);
            if (val) {
                av_dict_set(&s->metadata, "Source", val, 0);
            }
        } else if (!av_strcasecmp(node->name, "Copyright")) {
            val = xmlNodeGetContent(node);
            if (val) {
                av_dict_set(&s->metadata, "Copyright", val, 0);
            }
        }
        node = xmlNextElementSibling(node);
        xmlFree(val);
        val = ((void*)0);
    }
    return 0;
}
