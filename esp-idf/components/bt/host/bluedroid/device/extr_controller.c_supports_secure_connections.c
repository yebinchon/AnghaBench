
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int secure_connections_supported; int readable; } ;


 int assert (int ) ;
 TYPE_1__ controller_param ;

__attribute__((used)) static bool supports_secure_connections(void)
{
    assert(controller_param.readable);
    return controller_param.secure_connections_supported;
}
