
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef TYPE_2__* xmlAttrPtr ;
struct timeline {void* duration; void* repeat; void* starttime; } ;
struct representation {int n_timelines; int timelines; } ;
typedef void* int64_t ;
struct TYPE_6__ {struct TYPE_6__* next; int name; } ;
struct TYPE_5__ {TYPE_2__* properties; int name; } ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 int av_log (int *,int ,char*,int ) ;
 struct timeline* av_mallocz (int) ;
 int av_strcasecmp (int ,char const*) ;
 int dynarray_add (int *,int *,struct timeline*) ;
 scalar_t__ strtoll (char*,int *,int) ;
 int xmlFree (char*) ;
 char* xmlGetProp (TYPE_1__*,int ) ;

__attribute__((used)) static int parse_manifest_segmenttimeline(AVFormatContext *s, struct representation *rep,
                                          xmlNodePtr fragment_timeline_node)
{
    xmlAttrPtr attr = ((void*)0);
    char *val = ((void*)0);

    if (!av_strcasecmp(fragment_timeline_node->name, (const char *)"S")) {
        struct timeline *tml = av_mallocz(sizeof(struct timeline));
        if (!tml) {
            return AVERROR(ENOMEM);
        }
        attr = fragment_timeline_node->properties;
        while (attr) {
            val = xmlGetProp(fragment_timeline_node, attr->name);

            if (!val) {
                av_log(s, AV_LOG_WARNING, "parse_manifest_segmenttimeline attr->name = %s val is NULL\n", attr->name);
                continue;
            }

            if (!av_strcasecmp(attr->name, (const char *)"t")) {
                tml->starttime = (int64_t)strtoll(val, ((void*)0), 10);
            } else if (!av_strcasecmp(attr->name, (const char *)"r")) {
                tml->repeat =(int64_t) strtoll(val, ((void*)0), 10);
            } else if (!av_strcasecmp(attr->name, (const char *)"d")) {
                tml->duration = (int64_t)strtoll(val, ((void*)0), 10);
            }
            attr = attr->next;
            xmlFree(val);
        }
        dynarray_add(&rep->timelines, &rep->n_timelines, tml);
    }

    return 0;
}
