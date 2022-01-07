
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
struct representation {int n_fragments; int fragments; struct fragment* init_section; } ;
struct fragment {void* url; } ;
struct TYPE_11__ {TYPE_2__* priv_data; } ;
struct TYPE_10__ {int max_url_size; } ;
struct TYPE_9__ {int name; } ;
typedef TYPE_2__ DASHContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int MAX_URL_SIZE ;
 int av_free (struct fragment*) ;
 int av_strcasecmp (int ,char const*) ;
 int dynarray_add (int *,int *,struct fragment*) ;
 void* get_Fragment (char*) ;
 void* get_content_url (TYPE_1__**,int,int,char*,char*,char*) ;
 int xmlFree (char*) ;
 char* xmlGetProp (TYPE_1__*,char*) ;

__attribute__((used)) static int parse_manifest_segmenturlnode(AVFormatContext *s, struct representation *rep,
                                         xmlNodePtr fragmenturl_node,
                                         xmlNodePtr *baseurl_nodes,
                                         char *rep_id_val,
                                         char *rep_bandwidth_val)
{
    DASHContext *c = s->priv_data;
    char *initialization_val = ((void*)0);
    char *media_val = ((void*)0);
    char *range_val = ((void*)0);
    int max_url_size = c ? c->max_url_size: MAX_URL_SIZE;

    if (!av_strcasecmp(fragmenturl_node->name, (const char *)"Initialization")) {
        initialization_val = xmlGetProp(fragmenturl_node, "sourceURL");
        range_val = xmlGetProp(fragmenturl_node, "range");
        if (initialization_val || range_val) {
            rep->init_section = get_Fragment(range_val);
            if (!rep->init_section) {
                xmlFree(initialization_val);
                xmlFree(range_val);
                return AVERROR(ENOMEM);
            }
            rep->init_section->url = get_content_url(baseurl_nodes, 4,
                                                     max_url_size,
                                                     rep_id_val,
                                                     rep_bandwidth_val,
                                                     initialization_val);

            if (!rep->init_section->url) {
                av_free(rep->init_section);
                xmlFree(initialization_val);
                xmlFree(range_val);
                return AVERROR(ENOMEM);
            }
            xmlFree(initialization_val);
            xmlFree(range_val);
        }
    } else if (!av_strcasecmp(fragmenturl_node->name, (const char *)"SegmentURL")) {
        media_val = xmlGetProp(fragmenturl_node, "media");
        range_val = xmlGetProp(fragmenturl_node, "mediaRange");
        if (media_val || range_val) {
            struct fragment *seg = get_Fragment(range_val);
            if (!seg) {
                xmlFree(media_val);
                xmlFree(range_val);
                return AVERROR(ENOMEM);
            }
            seg->url = get_content_url(baseurl_nodes, 4,
                                       max_url_size,
                                       rep_id_val,
                                       rep_bandwidth_val,
                                       media_val);
            if (!seg->url) {
                av_free(seg);
                xmlFree(media_val);
                xmlFree(range_val);
                return AVERROR(ENOMEM);
            }
            dynarray_add(&rep->fragments, &rep->n_fragments, seg);
            xmlFree(media_val);
            xmlFree(range_val);
        }
    }

    return 0;
}
