
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int const type; int reg; } ;
typedef TYPE_1__ sh_operand_info ;
struct TYPE_8__ {int* nibbles; } ;
typedef TYPE_2__ sh_opcode_info ;
 int insert (unsigned int*,int,int) ;

unsigned long build_bytes(sh_opcode_info op,sh_operand_info a1,
                          sh_operand_info a2,sh_operand_info disp)




{
    int loop;
    int i;
    unsigned int opcode;

    loop = 0;
    opcode = 0;
    while(loop < 4)
    {
       i = op.nibbles[loop];
       if(i < 16)
       {
          insert(&opcode,i,loop);
          loop++;
       }
       else
       {
          switch(i)
          {
            case 129 : if(a1.type == 129)
                             insert(&opcode,a1.reg,loop);
                           else
                             insert(&opcode,a2.reg,loop);
                           break;
            case 128 : if(a1.type == 128)
                             insert(&opcode,a1.reg,loop);
                           else
                             insert(&opcode,a2.reg,loop);
                           break;
            case 139 :
            case 137 : insert(&opcode,disp.reg&0xF,loop);
                           break;
            case 136: disp.reg >>= 1;
                           insert(&opcode,disp.reg&0xF,loop);
                           break;
            case 135: disp.reg >>= 2;
                           insert(&opcode,disp.reg&0xF,loop);
                           break;
            case 141: insert(&opcode,(disp.reg >> 8) & 0xF,loop);
                            insert(&opcode,(disp.reg >> 4) & 0xF,loop+1);
                            insert(&opcode,disp.reg & 0xF,loop+2);
                            loop += 2;
                            break;
            case 138 :
            case 134 :
            case 140 : insert(&opcode,(disp.reg >> 4) & 0xF,loop);
                            insert(&opcode,disp.reg & 0xF,loop+1);
                            loop += 1;
                            break;
            case 131:
            case 133 :
                            disp.reg >>= 1;
                            insert(&opcode,(disp.reg >> 4) & 0xF,loop);
                            insert(&opcode,disp.reg & 0xF,loop+1);
                            loop += 1;
                            break;
            case 130:
            case 132 :
                            disp.reg >>= 2;
                            insert(&opcode,(disp.reg >> 4) & 0xF,loop);
                            insert(&opcode,disp.reg & 0xF,loop+1);
                            loop += 1;
                            break;
          }
          loop++;
       }
    }
    return opcode;
}
