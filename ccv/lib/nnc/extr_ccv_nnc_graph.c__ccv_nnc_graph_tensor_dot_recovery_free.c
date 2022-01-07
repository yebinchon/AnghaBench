
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int remap; int dots; } ;
typedef TYPE_1__ ccv_nnc_tensor_dot_recovery_t ;


 int ccfree (int ) ;

__attribute__((used)) static void _ccv_nnc_graph_tensor_dot_recovery_free(const ccv_nnc_tensor_dot_recovery_t recovery)
{
 ccfree(recovery.dots);
 ccfree(recovery.remap);
}
