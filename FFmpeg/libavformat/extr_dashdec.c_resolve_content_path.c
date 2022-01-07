
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * xmlNodePtr ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int aligned (int) ;
 int av_free (char*) ;
 char* av_mallocz (int) ;
 scalar_t__ av_strcasecmp (char*,char*) ;
 scalar_t__ av_stristr (char*,char*) ;
 int av_strlcat (char*,char*,int) ;
 int av_strlcpy (char*,char const*,int) ;
 int av_strncasecmp (char*,char*,int) ;
 int av_strstart (char*,char*,int *) ;
 char* av_strtok (char*,char*,char**) ;
 int ishttp (char*) ;
 int memset (char*,int ,int) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;
 int xmlFree (char*) ;
 char* xmlNodeGetContent (int *) ;
 int xmlNodeSetContent (int *,char*) ;

__attribute__((used)) static int resolve_content_path(AVFormatContext *s, const char *url, int *max_url_size, xmlNodePtr *baseurl_nodes, int n_baseurl_nodes)
{
    char *tmp_str = ((void*)0);
    char *path = ((void*)0);
    char *mpdName = ((void*)0);
    xmlNodePtr node = ((void*)0);
    char *baseurl = ((void*)0);
    char *root_url = ((void*)0);
    char *text = ((void*)0);
    char *tmp = ((void*)0);
    int isRootHttp = 0;
    char token ='/';
    int start = 0;
    int rootId = 0;
    int updated = 0;
    int size = 0;
    int i;
    int tmp_max_url_size = strlen(url);

    for (i = n_baseurl_nodes-1; i >= 0 ; i--) {
        text = xmlNodeGetContent(baseurl_nodes[i]);
        if (!text)
            continue;
        tmp_max_url_size += strlen(text);
        if (ishttp(text)) {
            xmlFree(text);
            break;
        }
        xmlFree(text);
    }

    tmp_max_url_size = aligned(tmp_max_url_size);
    text = av_mallocz(tmp_max_url_size);
    if (!text) {
        updated = AVERROR(ENOMEM);
        goto end;
    }
    av_strlcpy(text, url, strlen(url)+1);
    tmp = text;
    while (mpdName = av_strtok(tmp, "/", &tmp)) {
        size = strlen(mpdName);
    }
    av_free(text);

    path = av_mallocz(tmp_max_url_size);
    tmp_str = av_mallocz(tmp_max_url_size);
    if (!tmp_str || !path) {
        updated = AVERROR(ENOMEM);
        goto end;
    }

    av_strlcpy (path, url, strlen(url) - size + 1);
    for (rootId = n_baseurl_nodes - 1; rootId > 0; rootId --) {
        if (!(node = baseurl_nodes[rootId])) {
            continue;
        }
        text = xmlNodeGetContent(node);
        if (ishttp(text)) {
            xmlFree(text);
            break;
        }
        xmlFree(text);
    }

    node = baseurl_nodes[rootId];
    baseurl = xmlNodeGetContent(node);
    root_url = (av_strcasecmp(baseurl, "")) ? baseurl : path;
    if (node) {
        xmlNodeSetContent(node, root_url);
        updated = 1;
    }

    size = strlen(root_url);
    isRootHttp = ishttp(root_url);

    if (root_url[size - 1] != token) {
        av_strlcat(root_url, "/", size + 2);
        size += 2;
    }

    for (i = 0; i < n_baseurl_nodes; ++i) {
        if (i == rootId) {
            continue;
        }
        text = xmlNodeGetContent(baseurl_nodes[i]);
        if (text && !av_strstart(text, "/", ((void*)0))) {
            memset(tmp_str, 0, strlen(tmp_str));
            if (!ishttp(text) && isRootHttp) {
                av_strlcpy(tmp_str, root_url, size + 1);
            }
            start = (text[0] == token);
            if (start && av_stristr(tmp_str, text)) {
                char *p = tmp_str;
                if (!av_strncasecmp(tmp_str, "http://", 7)) {
                    p += 7;
                } else if (!av_strncasecmp(tmp_str, "https://", 8)) {
                    p += 8;
                }
                p = strchr(p, '/');
                memset(p + 1, 0, strlen(p));
            }
            av_strlcat(tmp_str, text + start, tmp_max_url_size);
            xmlNodeSetContent(baseurl_nodes[i], tmp_str);
            updated = 1;
            xmlFree(text);
        }
    }

end:
    if (tmp_max_url_size > *max_url_size) {
        *max_url_size = tmp_max_url_size;
    }
    av_free(path);
    av_free(tmp_str);
    xmlFree(baseurl);
    return updated;

}
