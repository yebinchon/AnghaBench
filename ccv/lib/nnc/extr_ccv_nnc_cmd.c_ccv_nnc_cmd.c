
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int ccv_nnc_cmd_vtab_t ;
struct TYPE_3__ {scalar_t__ cmd; int algorithm; int * isa; int backend; int info; } ;
typedef TYPE_1__ ccv_nnc_cmd_t ;
typedef int ccv_nnc_cmd_param_t ;


 scalar_t__ const CCV_NNC_CUSTOM_FORWARD ;
 int CCV_NNC_NO_BACKEND ;
 int assert (int) ;

ccv_nnc_cmd_t ccv_nnc_cmd(const uint32_t _cmd, ccv_nnc_cmd_vtab_t* const isa, const ccv_nnc_cmd_param_t params, const int flags)
{
 ccv_nnc_cmd_t cmd;
 cmd.info = params;
 cmd.backend = CCV_NNC_NO_BACKEND;
 assert((_cmd == CCV_NNC_CUSTOM_FORWARD && isa) || (_cmd != CCV_NNC_CUSTOM_FORWARD && !isa));
 cmd.cmd = _cmd;
 cmd.algorithm = -1;
 cmd.isa = isa;
 return cmd;
}
