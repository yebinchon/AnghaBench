
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int path ;
typedef int host ;
typedef int h_url ;
typedef int auth ;
struct TYPE_6__ {int protocol_blacklist; int protocol_whitelist; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {char* name; char* description; char* url; char* genre; char* content_type; char* user_agent; char* pass; int hd; scalar_t__ legacy_icecast; scalar_t__ public; } ;
typedef TYPE_2__ IcecastContext ;
typedef int AVDictionary ;
typedef int AVBPrint ;


 int AVERROR (int ) ;
 int AVIO_FLAG_READ ;
 int AVIO_FLAG_READ_WRITE ;
 int AV_BPRINT_SIZE_AUTOMATIC ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 char* DEFAULT_ICE_USER ;
 int EIO ;
 int ENOMEM ;
 int ENOSYS ;
 scalar_t__ NOT_EMPTY (char*) ;
 int av_bprint_finalize (int *,char**) ;
 int av_bprint_init (int *,int ,int ) ;
 int av_bprint_is_complete (int *) ;
 int av_dict_free (int **) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int av_free (char*) ;
 int av_freep (char**) ;
 int av_log (TYPE_1__*,int ,char*) ;
 void* av_strdup (char*) ;
 int av_url_split (int *,int ,char*,int,char*,int,int*,char*,int,char const*) ;
 int cat_header (int *,char*,char*) ;
 int ff_url_join (char*,int,char*,char*,char*,int,char*,char*) ;
 int ffurl_open_whitelist (int *,char*,int ,int *,int **,int ,int ,TYPE_1__*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int icecast_open(URLContext *h, const char *uri, int flags)
{
    IcecastContext *s = h->priv_data;


    AVDictionary *opt_dict = ((void*)0);


    char h_url[1024], host[1024], auth[1024], path[1024];
    char *headers = ((void*)0), *user = ((void*)0);
    int port, ret;
    AVBPrint bp;

    if (flags & AVIO_FLAG_READ)
        return AVERROR(ENOSYS);

    av_bprint_init(&bp, 0, AV_BPRINT_SIZE_AUTOMATIC);


    cat_header(&bp, "Ice-Name", s->name);
    cat_header(&bp, "Ice-Description", s->description);
    cat_header(&bp, "Ice-URL", s->url);
    cat_header(&bp, "Ice-Genre", s->genre);
    cat_header(&bp, "Ice-Public", s->public ? "1" : "0");
    if (!av_bprint_is_complete(&bp)) {
        ret = AVERROR(ENOMEM);
        goto cleanup;
    }
    av_bprint_finalize(&bp, &headers);


    av_dict_set(&opt_dict, "method", s->legacy_icecast ? "SOURCE" : "PUT", 0);
    av_dict_set(&opt_dict, "auth_type", "basic", 0);
    av_dict_set(&opt_dict, "headers", headers, 0);
    av_dict_set(&opt_dict, "chunked_post", "0", 0);
    av_dict_set(&opt_dict, "send_expect_100", s->legacy_icecast ? "-1" : "1", 0);
    if (NOT_EMPTY(s->content_type))
        av_dict_set(&opt_dict, "content_type", s->content_type, 0);
    else
        av_dict_set(&opt_dict, "content_type", "audio/mpeg", 0);
    if (NOT_EMPTY(s->user_agent))
        av_dict_set(&opt_dict, "user_agent", s->user_agent, 0);


    av_url_split(((void*)0), 0, auth, sizeof(auth), host, sizeof(host),
                 &port, path, sizeof(path), uri);


    if (auth[0]) {
        char *sep = strchr(auth, ':');
        if (sep) {
            *sep = 0;
            sep++;
            if (s->pass) {
                av_free(s->pass);
                av_log(h, AV_LOG_WARNING, "Overwriting -password <pass> with URI password!\n");
            }
            if (!(s->pass = av_strdup(sep))) {
                ret = AVERROR(ENOMEM);
                goto cleanup;
            }
        }
        if (!(user = av_strdup(auth))) {
            ret = AVERROR(ENOMEM);
            goto cleanup;
        }
    }


    snprintf(auth, sizeof(auth),
             "%s:%s",
             user ? user : DEFAULT_ICE_USER,
             s->pass ? s->pass : "");


    if (!path[0] || strcmp(path, "/") == 0) {
        av_log(h, AV_LOG_ERROR, "No mountpoint (path) specified!\n");
        ret = AVERROR(EIO);
        goto cleanup;
    }


    ff_url_join(h_url, sizeof(h_url), "http", auth, host, port, "%s", path);

    ret = ffurl_open_whitelist(&s->hd, h_url, AVIO_FLAG_READ_WRITE, ((void*)0),
                               &opt_dict, h->protocol_whitelist, h->protocol_blacklist, h);

cleanup:
    av_freep(&user);
    av_freep(&headers);
    av_dict_free(&opt_dict);

    return ret;
}
