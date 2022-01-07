
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVClass ;


 int const av_format_context_class ;

const AVClass *avformat_get_class(void)
{
    return &av_format_context_class;
}
