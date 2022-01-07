
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int is_streamed; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {int seekable; char* headers; int chained_options; scalar_t__ listen; int location; int filesize; } ;
typedef TYPE_2__ HTTPContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 int UINT64_MAX ;
 int av_dict_copy (int *,int *,int ) ;
 int av_dict_free (int *) ;
 int av_log (TYPE_1__*,int ,char*) ;
 int av_reallocp (char**,int) ;
 int av_strdup (char const*) ;
 int http_listen (TYPE_1__*,char const*,int,int **) ;
 int http_open_cnx (TYPE_1__*,int **) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int http_open(URLContext *h, const char *uri, int flags,
                     AVDictionary **options)
{
    HTTPContext *s = h->priv_data;
    int ret;

    if( s->seekable == 1 )
        h->is_streamed = 0;
    else
        h->is_streamed = 1;

    s->filesize = UINT64_MAX;
    s->location = av_strdup(uri);
    if (!s->location)
        return AVERROR(ENOMEM);
    if (options)
        av_dict_copy(&s->chained_options, *options, 0);

    if (s->headers) {
        int len = strlen(s->headers);
        if (len < 2 || strcmp("\r\n", s->headers + len - 2)) {
            av_log(h, AV_LOG_WARNING,
                   "No trailing CRLF found in HTTP header. Adding it.\n");
            ret = av_reallocp(&s->headers, len + 3);
            if (ret < 0)
                return ret;
            s->headers[len] = '\r';
            s->headers[len + 1] = '\n';
            s->headers[len + 2] = '\0';
        }
    }

    if (s->listen) {
        return http_listen(h, uri, flags, options);
    }
    ret = http_open_cnx(h, options);
    if (ret < 0)
        av_dict_free(&s->chained_options);
    return ret;
}
