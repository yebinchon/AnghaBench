
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int BT_HDR ;


 int * make_command (int ,int ,int *) ;

__attribute__((used)) static BT_HDR *make_command_no_params(uint16_t opcode)
{
    return make_command(opcode, 0, ((void*)0));
}
