
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int url; } ;
struct TYPE_5__ {char* method; char* user_agent; int timeout; char* headers; scalar_t__ http_persistent; } ;
typedef TYPE_1__ HLSContext ;
typedef TYPE_2__ AVFormatContext ;
typedef int AVDictionary ;


 int av_dict_set (int **,char*,char*,int ) ;
 int av_dict_set_int (int **,char*,int,int ) ;
 int ff_is_http_proto (int ) ;

__attribute__((used)) static void set_http_options(AVFormatContext *s, AVDictionary **options, HLSContext *c)
{
    int http_base_proto = ff_is_http_proto(s->url);

    if (c->method) {
        av_dict_set(options, "method", c->method, 0);
    } else if (http_base_proto) {
        av_dict_set(options, "method", "PUT", 0);
    }
    if (c->user_agent)
        av_dict_set(options, "user_agent", c->user_agent, 0);
    if (c->http_persistent)
        av_dict_set_int(options, "multiple_requests", 1, 0);
    if (c->timeout >= 0)
        av_dict_set_int(options, "timeout", c->timeout, 0);
    if (c->headers)
        av_dict_set(options, "headers", c->headers, 0);
}
