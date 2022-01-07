
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int imm; int sel; int sub_opcode; int opcode; } ;
struct TYPE_10__ {int addr; int reg; } ;
struct TYPE_9__ {int offset; int sign; int sub_opcode; int opcode; } ;
struct TYPE_12__ {TYPE_3__ alu_imm; TYPE_2__ bx; TYPE_1__ b; } ;
typedef TYPE_4__ ulp_insn_t ;
typedef int uint32_t ;
struct TYPE_13__ {int addr; int type; } ;
typedef TYPE_5__ reloc_info_t ;
typedef scalar_t__ int32_t ;
typedef int esp_err_t ;


 int ALU_SEL_MOV ;
 int ESP_ERR_ULP_BRANCH_OUT_OF_RANGE ;
 int ESP_LOGW (int ,char*,int,int) ;
 int ESP_OK ;
 int OPCODE_ALU ;
 int OPCODE_BRANCH ;


 int SUB_OPCODE_ALU_IMM ;



 int TAG ;
 int abs (scalar_t__) ;
 int assert (int ) ;

__attribute__((used)) static esp_err_t do_single_reloc(ulp_insn_t* program, uint32_t load_addr,
        reloc_info_t label_info, reloc_info_t the_reloc)
{
    size_t insn_offset = the_reloc.addr - load_addr;
    ulp_insn_t* insn = &program[insn_offset];

    switch (the_reloc.type) {
        case 132: {



            assert(insn->b.opcode == OPCODE_BRANCH
                    && "branch macro was applied to a non-branch instruction");
            switch (insn->b.sub_opcode) {
                case 130:
                case 129:{
                    int32_t offset = ((int32_t) label_info.addr) - ((int32_t) the_reloc.addr);
                    uint32_t abs_offset = abs(offset);
                    uint32_t sign = (offset >= 0) ? 0 : 1;
                    if (abs_offset > 127) {
                        ESP_LOGW(TAG, "target out of range: branch from %x to %x",
                                the_reloc.addr, label_info.addr);
                        return ESP_ERR_ULP_BRANCH_OUT_OF_RANGE;
                    }
                    insn->b.offset = abs_offset;
                    insn->b.sign = sign;
                    break;
                }
                case 128:{
                    assert(insn->bx.reg == 0 &&
                            "relocation applied to a jump with offset in register");
                    insn->bx.addr = label_info.addr;
                    break;
                }
                default:
                    assert(0 && "unexpected branch sub-opcode");
            }
            break;
        }
        case 131: {
            assert((insn->alu_imm.opcode == OPCODE_ALU && insn->alu_imm.sub_opcode == SUB_OPCODE_ALU_IMM && insn->alu_imm.sel == ALU_SEL_MOV)
                        && "pc macro was applied to an incompatible instruction");
            insn->alu_imm.imm = label_info.addr;
            break;
        }
        default:
            assert(0 && "unknown reloc type");
    }
    return ESP_OK;
}
