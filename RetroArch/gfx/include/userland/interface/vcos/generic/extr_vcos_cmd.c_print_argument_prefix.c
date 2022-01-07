
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * argv_orig; int * argv; } ;
typedef TYPE_1__ VCOS_CMD_PARAM_T ;


 int vcos_cmd_printf (TYPE_1__*,char*,int ) ;

__attribute__((used)) static void print_argument_prefix( VCOS_CMD_PARAM_T *param )
{
    int arg_idx;

    for ( arg_idx = 0; &param->argv_orig[arg_idx] != param->argv; arg_idx++ )
    {
        vcos_cmd_printf( param, "%s ", param->argv_orig[arg_idx] );
    }
}
