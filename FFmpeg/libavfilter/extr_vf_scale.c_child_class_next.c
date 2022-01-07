
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVClass ;


 int const* sws_get_class () ;

__attribute__((used)) static const AVClass *child_class_next(const AVClass *prev)
{
    return prev ? ((void*)0) : sws_get_class();
}
