
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int readable; } ;


 TYPE_1__ controller_param ;

__attribute__((used)) static bool get_is_ready(void)
{
    return controller_param.readable;
}
