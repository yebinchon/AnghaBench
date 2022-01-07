
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int category; } ;
typedef TYPE_1__ AVClass ;


 scalar_t__ AV_IS_INPUT_DEVICE (int ) ;
 scalar_t__ AV_IS_OUTPUT_DEVICE (int ) ;

__attribute__((used)) static int is_device(const AVClass *avclass)
{
    if (!avclass)
        return 0;
    return AV_IS_INPUT_DEVICE(avclass->category) || AV_IS_OUTPUT_DEVICE(avclass->category);
}
