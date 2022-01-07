
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVClass ;


 int const ff_sws_context_class ;

const AVClass *sws_get_class(void)
{
    return &ff_sws_context_class;
}
