
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int line ;
struct TYPE_7__ {int is_streamed; TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {int seekable; int filesize; int cookie_dict; int cookies; scalar_t__ is_mediagateway; int line_count; int chunksize; } ;
typedef TYPE_2__ HTTPContext ;


 int AV_LOG_TRACE ;
 int MAX_URL_SIZE ;
 int UINT64_MAX ;
 int av_dict_free (int *) ;
 int av_log (TYPE_1__*,int ,char*,char*) ;
 int cookie_string (int ,int *) ;
 int http_get_line (TYPE_2__*,char*,int) ;
 int process_line (TYPE_1__*,char*,int ,int*) ;

__attribute__((used)) static int http_read_header(URLContext *h, int *new_location)
{
    HTTPContext *s = h->priv_data;
    char line[MAX_URL_SIZE];
    int err = 0;

    s->chunksize = UINT64_MAX;

    for (;;) {
        if ((err = http_get_line(s, line, sizeof(line))) < 0)
            return err;

        av_log(h, AV_LOG_TRACE, "header='%s'\n", line);

        err = process_line(h, line, s->line_count, new_location);
        if (err < 0)
            return err;
        if (err == 0)
            break;
        s->line_count++;
    }

    if (s->seekable == -1 && s->is_mediagateway && s->filesize == 2000000000)
        h->is_streamed = 1;


    cookie_string(s->cookie_dict, &s->cookies);
    av_dict_free(&s->cookie_dict);

    return err;
}
