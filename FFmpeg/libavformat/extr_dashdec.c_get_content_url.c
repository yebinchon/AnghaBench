
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_2__* children; } ;


 scalar_t__ XML_TEXT_NODE ;
 int av_free (char*) ;
 char* av_mallocz (int) ;
 char* av_strireplace (char*,char*,char const*) ;
 int av_strlcpy (char*,char*,int) ;
 int ff_make_absolute_url (char*,int,char*,char*) ;
 int memset (char*,int ,int) ;
 int xmlFree (char*) ;
 char* xmlNodeGetContent (TYPE_2__*) ;

__attribute__((used)) static char *get_content_url(xmlNodePtr *baseurl_nodes,
                             int n_baseurl_nodes,
                             int max_url_size,
                             char *rep_id_val,
                             char *rep_bandwidth_val,
                             char *val)
{
    int i;
    char *text;
    char *url = ((void*)0);
    char *tmp_str = av_mallocz(max_url_size);
    char *tmp_str_2 = av_mallocz(max_url_size);

    if (!tmp_str || !tmp_str_2) {
        return ((void*)0);
    }

    for (i = 0; i < n_baseurl_nodes; ++i) {
        if (baseurl_nodes[i] &&
            baseurl_nodes[i]->children &&
            baseurl_nodes[i]->children->type == XML_TEXT_NODE) {
            text = xmlNodeGetContent(baseurl_nodes[i]->children);
            if (text) {
                memset(tmp_str, 0, max_url_size);
                memset(tmp_str_2, 0, max_url_size);
                ff_make_absolute_url(tmp_str_2, max_url_size, tmp_str, text);
                av_strlcpy(tmp_str, tmp_str_2, max_url_size);
                xmlFree(text);
            }
        }
    }

    if (val)
        ff_make_absolute_url(tmp_str, max_url_size, tmp_str, val);

    if (rep_id_val) {
        url = av_strireplace(tmp_str, "$RepresentationID$", (const char*)rep_id_val);
        if (!url) {
            goto end;
        }
        av_strlcpy(tmp_str, url, max_url_size);
    }
    if (rep_bandwidth_val && tmp_str[0] != '\0') {

        av_free(url);
        url = av_strireplace(tmp_str, "$Bandwidth$", (const char*)rep_bandwidth_val);
        if (!url) {
            goto end;
        }
    }
end:
    av_free(tmp_str);
    av_free(tmp_str_2);
    return url;
}
