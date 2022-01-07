
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVClass ;


 int const framesync_class ;

const AVClass *ff_framesync_get_class(void)
{
    return &framesync_class;
}
