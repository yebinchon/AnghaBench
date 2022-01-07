
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int tagbuf ;
typedef int int8_t ;
typedef int const int16_t ;
struct TYPE_3__ {int mask; int test; char* format; } ;
typedef int Q68State ;


 int APPEND (char*,...) ;
 int APPEND_CHAR (char const) ;
 int READS16 (int *,int) ;
 void* READU16 (int *,int) ;
 void* READU32 (int *,int) ;
 TYPE_1__* instructions ;
 int lenof (TYPE_1__*) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

const char *q68_disassemble(Q68State *state, uint32_t address,
                            int *nwords_ret)
{
    const uint32_t base_address = address;
    static char outbuf[1000];

    if (address % 2 != 0) {
        if (nwords_ret) {
            *nwords_ret = 1;
        }
        return "???";
    }

    uint16_t opcode = READU16(state, address);
    address += 2;
    const char *format = ((void*)0);
    int i;
    for (i = 0; i < lenof(instructions); i++) {
        if ((opcode & instructions[i].mask) == instructions[i].test) {
            format = instructions[i].format;
            break;
        }
    }
    if (!format) {
        if (nwords_ret) {
            *nwords_ret = 1;
        }
        return "???";
    }

    int outlen = 0;
    int inpos = 0;
    while (format[inpos] != 0) {
        if (format[inpos] == '<') {
            char tagbuf[100];
            int end = inpos+1;
            for (; format[end] != 0 && format[end] != '>'; end++) {
                if (end - (inpos+1) >= sizeof(tagbuf)) {
                    break;
                }
            }
            memcpy(tagbuf, &format[inpos+1], end - (inpos+1));
            tagbuf[end - (inpos+1)] = 0;
            if (format[end] != 0) {
                end++;
            }
            inpos = end;
            if (strncmp(tagbuf,"ea",2) == 0) {
                int mode, reg;
                char size;
                if (strncmp(tagbuf,"ea2",3) == 0) {
                    mode = opcode>>6 & 7;
                    reg = opcode>>9 & 7;
                    size = tagbuf[4];
                } else {
                    mode = opcode>>3 & 7;
                    reg = opcode>>0 & 7;
                    size = tagbuf[3];
                }
                switch (mode) {
                  case 0:
                    do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "D%d" , reg); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                    break;
                  case 1:
                    do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "A%d" , reg); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                    break;
                  case 2:
                    do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "(A%d)" , reg); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                    break;
                  case 3:
                    do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "(A%d)+" , reg); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                    break;
                  case 4:
                    do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "-(A%d)" , reg); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                    break;
                  case 5: {
                    int16_t disp = READS16(state, address);
                    address += 2;
                    do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "%d(A%d)" , disp, reg); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                    break;
                  }
                  case 6: {
                    uint16_t ext = READU16(state, address);
                    address += 2;
                    const int iregtype = ext>>15;
                    const int ireg = ext>>12 & 7;
                    const int iregsize = ext>>11;
                    const int8_t disp = ext & 0xFF;
                    do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "%d(A%d,%c%d.%c)" , disp, reg, iregtype ? 'A' : 'D', ireg, iregsize ? 'l' : 'w'); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);

                    break;
                  }
                  case 7:
                    switch (reg) {
                      case 0: {
                        const uint16_t abs = READU16(state, address);
                        address += 2;
                        do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "($%X).w" , abs); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                        break;
                      }
                      case 1: {
                        const uint32_t abs = READU32(state, address);
                        address += 4;
                        do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "($%X).l" , abs); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                        break;
                      }
                      case 2: {
                        int16_t disp = READS16(state, address);
                        address += 2;
                        do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "$%X(PC)" , (base_address+2) + disp); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                        break;
                      }
                      case 3: {
                        uint16_t ext = READU16(state, address);
                        address += 2;
                        const int iregtype = ext>>15;
                        const int ireg = ext>>12 & 7;
                        const int iregsize = ext>>11;
                        const int8_t disp = ext & 0xFF;
                        do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "$%X(PC,%c%d.%c)" , (base_address+2) + disp, iregtype ? 'A' : 'D', ireg, iregsize ? 'l' : 'w'); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);

                        break;
                      }
                      case 4: {
                        uint32_t imm;
                        if (size == 'l') {
                            imm = READU32(state, address);
                            address += 4;
                        } else {
                            imm = READU16(state, address);
                            address += 2;
                        }
                        do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "#%s%X" , imm<10 ? "" : "$", imm); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                        break;
                      }
                      default:
                        do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "???"); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                        break;
                    }
                }
            } else if (strcmp(tagbuf,"reg") == 0) {
                do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "%d" , opcode>>9 & 7); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
            } else if (strcmp(tagbuf,"reg0") == 0) {
                do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "%d" , opcode>>0 & 7); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
            } else if (strcmp(tagbuf,"count") == 0) {
                do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "%d" , opcode>>9 & 7 ?: 8); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
            } else if (strcmp(tagbuf,"trap") == 0) {
                do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "%d" , opcode>>0 & 15); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
            } else if (strcmp(tagbuf,"quick8") == 0) {
                do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "%d" , (int8_t)(opcode & 0xFF)); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
            } else if (strncmp(tagbuf,"imm8",4) == 0) {
                uint8_t imm8 = READU16(state, address);
                imm8 &= 0xFF;
                address += 2;
                if (tagbuf[4] == 'd') {
                    do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "%d" , imm8); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                } else if (tagbuf[4] == 'x') {
                    do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "$%02X" , imm8); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                } else {
                    do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "%s%X" , imm8<10 ? "" : "$", imm8); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                }
            } else if (strncmp(tagbuf,"imm16",5) == 0) {
                uint16_t imm16 = READU16(state, address);
                address += 2;
                if (tagbuf[5] == 'd') {
                    do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "%d" , imm16); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                } else if (tagbuf[5] == 'x') {
                    do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "$%04X" , imm16); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                } else {
                    do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "%s%X" , imm16<10 ? "" : "$", imm16); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
                }
            } else if (strcmp(tagbuf,"pcrel8") == 0) {
                int8_t disp8 = opcode & 0xFF;
                do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "$%X" , (base_address+2) + disp8); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
            } else if (strcmp(tagbuf,"pcrel16") == 0) {
                int16_t disp16 = READS16(state, address);
                address += 2;
                do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "$%X" , (base_address+2) + disp16); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
            } else if (strcmp(tagbuf,"reglist") == 0
                       || strcmp(tagbuf,"tsilger") == 0) {
                uint16_t reglist = READU16(state, address);
                address += 2;
                if (strcmp(tagbuf,"tsilger") == 0) {

                    uint16_t temp = reglist;
                    reglist = 0;
                    while (temp) {
                        reglist <<= 1;
                        if (temp & 1) {
                            reglist |= 1;
                        }
                        temp >>= 1;
                    }
                }
                char listbuf[3*16];
                unsigned int listlen = 0;
                unsigned int last = 0;
                unsigned int regnum = 0;
                while (reglist) {
                    if (reglist & 1) {
                        if (last) {
                            if (listlen >= 3 && listbuf[listlen-3] == '-') {
                                listlen -= 2;
                            } else {
                                listbuf[listlen++] = '-';
                            }
                        } else {
                            if (listlen > 0) {
                                listbuf[listlen++] = '/';
                            }
                        }
                        listbuf[listlen++] = regnum<8 ? 'D' : 'A';
                        listbuf[listlen++] = '0' + (regnum % 8);
                    }
                    last = reglist & 1;
                    regnum++;
                    reglist >>= 1;
                }
                listbuf[listlen] = 0;
                do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "%s" , listbuf); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
            } else {
                do { outlen += snprintf(&outbuf[outlen], sizeof(outbuf)-outlen, "<%s>" , tagbuf); if (outlen > sizeof(outbuf)-1) { outlen = sizeof(outbuf)-1; } } while (0);
            }
        } else {
            do { if (outlen < sizeof(outbuf)-1) { outbuf[outlen++] = (format[inpos]); outbuf[outlen] = 0; } } while (0);
            inpos++;
        }
    }

    if (nwords_ret) {
        *nwords_ret = (address - base_address) / 2;
    }
    return outbuf;
}
