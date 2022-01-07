
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_4__ {TYPE_1__* (* get_features_classic ) (int ) ;} ;
struct TYPE_3__ {scalar_t__ as_array; } ;


 TYPE_2__* controller_get_interface () ;
 TYPE_1__* stub1 (int ) ;

UINT8 *BTM_ReadLocalFeatures (void)
{

    return (UINT8 *)controller_get_interface()->get_features_classic(0)->as_array;
}
