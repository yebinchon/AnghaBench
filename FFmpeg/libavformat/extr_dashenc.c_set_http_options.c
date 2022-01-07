
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timeout; scalar_t__ http_persistent; scalar_t__ user_agent; scalar_t__ method; } ;
typedef TYPE_1__ DASHContext ;
typedef int AVDictionary ;


 int av_dict_set (int **,char*,scalar_t__,int ) ;
 int av_dict_set_int (int **,char*,int,int ) ;

__attribute__((used)) static void set_http_options(AVDictionary **options, DASHContext *c)
{
    if (c->method)
        av_dict_set(options, "method", c->method, 0);
    if (c->user_agent)
        av_dict_set(options, "user_agent", c->user_agent, 0);
    if (c->http_persistent)
        av_dict_set_int(options, "multiple_requests", 1, 0);
    if (c->timeout >= 0)
        av_dict_set_int(options, "timeout", c->timeout, 0);
}
