
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int reg; } ;
typedef TYPE_1__ sh_operand_info ;


 int A_BDISP12 ;
 int A_IMM ;
 int parse_at (char const*,TYPE_1__*,char*) ;
 int parse_reg (char const*,int*,int *) ;

int parse_arg(const char *arg,sh_operand_info *op, char *err_msg)



{
    int len,mode;

    if(arg[0] == 0)
    {
      op->type = 0;
      op->reg = 0;
      return 1;
    }

    if(*arg == '@')
    {
       arg++;
       return parse_at(arg,op, err_msg);
    }

    if(*arg == '#')
    {
       op->type = A_IMM;
       return 1;
    }

    len = parse_reg(arg,&mode,&(op->reg));
    if(len)
    {
       op->type = mode;
       return 1;
    }
    else
    {
       op->type = A_BDISP12;
       return 1;
    }


    return 0;
}
