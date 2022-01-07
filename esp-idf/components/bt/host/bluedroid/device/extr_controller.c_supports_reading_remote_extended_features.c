
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int supported_commands; int readable; } ;


 int HCI_READ_REMOTE_EXT_FEATURES_SUPPORTED (int ) ;
 int assert (int ) ;
 TYPE_1__ controller_param ;

__attribute__((used)) static bool supports_reading_remote_extended_features(void)
{
    assert(controller_param.readable);
    return HCI_READ_REMOTE_EXT_FEATURES_SUPPORTED(controller_param.supported_commands);
}
