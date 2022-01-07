
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
__attribute__((used)) static unsigned int cc_info(uint16_t opcode)
{
    const unsigned int INPUT_XNZVC = 0x1F00;
    const unsigned int INPUT_XZ = 0x1400;
    const unsigned int INPUT_X = 0x1000;
    const unsigned int INPUT_N = 0x0800;
    const unsigned int INPUT_V = 0x0200;
    const unsigned int INPUT_NONE = 0x0000;
    const unsigned int OUTPUT_XNZVC = 0x001F;
    const unsigned int OUTPUT_XZC = 0x0015;
    const unsigned int OUTPUT_NZVC = 0x000F;
    const unsigned int OUTPUT_N = 0x0008;
    const unsigned int OUTPUT_Z = 0x0004;
    const unsigned int OUTPUT_NONE = 0x0000;
    static const unsigned int cond_inputs[] = {
        [130 ] = 0x0000,
        [140 ] = 0x0000,
        [137] = 0x0500,
        [135] = 0x0500,
        [143] = 0x0100,
        [142] = 0x0100,
        [132] = 0x0400,
        [141] = 0x0400,
        [129] = 0x0200,
        [128] = 0x0200,
        [131] = 0x0800,
        [133] = 0x0800,
        [139] = 0x0A00,
        [134] = 0x0A00,
        [138] = 0x0E00,
        [136] = 0x0E00,
    };

    switch (opcode>>12) {

      case 0x0:
        if (opcode & 0x100) {
            if ((opcode>>3 & 7) == 1) {
                return INPUT_NONE | OUTPUT_NONE;
            } else {
                return INPUT_NONE | OUTPUT_Z;
            }
        } else if ((opcode>>6 & 3) == 3) {
            return 0;
        } else {
            switch (opcode>>9 & 7) {
              case 0:
                if ((opcode & 0xBF) == 0x3C) {
                    return INPUT_XNZVC | OUTPUT_XNZVC;
                } else {
                    return INPUT_NONE | OUTPUT_NZVC;
                }
              case 1:
                if ((opcode & 0xBF) == 0x3C) {
                    return INPUT_XNZVC | OUTPUT_XNZVC;
                } else {
                    return INPUT_NONE | OUTPUT_NZVC;
                }
              case 2:
                return INPUT_NONE | OUTPUT_XNZVC;
              case 3:
                return INPUT_NONE | OUTPUT_XNZVC;
              case 4:
                return INPUT_NONE | OUTPUT_Z;
              case 5:
                if ((opcode & 0xBF) == 0x3C) {
                    return INPUT_XNZVC | OUTPUT_XNZVC;
                } else {
                    return INPUT_NONE | OUTPUT_NZVC;
                }
              case 6:
                return INPUT_NONE | OUTPUT_NZVC;
              case 7:
                return 0;
            }
        }

      case 0x1:
      case 0x2:
      case 0x3:
        if ((opcode>>6 & 7) == 1) {
            return INPUT_NONE | OUTPUT_NONE;
        } else {
            return INPUT_NONE | OUTPUT_NZVC;
        }

      case 0x4:
        if (opcode & 0x0100) {
            switch (opcode>>6 & 3) {
              case 0:
              case 1:
                return 0;
              case 2:

                return INPUT_N | OUTPUT_N;
              case 3:
                return INPUT_NONE | OUTPUT_NONE;
            }
        } else {
            switch (opcode & 0x0EC0) {
              case 0x0000:
              case 0x0040:
              case 0x0080:
                return INPUT_XZ | OUTPUT_XNZVC;
              case 0x00C0:
                return INPUT_XNZVC | OUTPUT_NONE;
              case 0x0200:
              case 0x0240:
              case 0x0280:
                return INPUT_NONE | OUTPUT_NZVC;
              case 0x02C0:
                return 0;
              case 0x0400:
              case 0x0440:
              case 0x0480:
                return INPUT_NONE | OUTPUT_XNZVC;
              case 0x04C0:
                return INPUT_NONE | OUTPUT_XNZVC;
              case 0x0600:
              case 0x0640:
              case 0x0680:
                return INPUT_NONE | OUTPUT_NZVC;
              case 0x06C0:
                return INPUT_NONE | OUTPUT_XNZVC;
              case 0x0800:
                return INPUT_XZ | OUTPUT_XZC;
              case 0x0840:
                if ((opcode>>3 & 7) == 0) {
                    return INPUT_NONE | OUTPUT_NZVC;
                } else {
                    return INPUT_NONE | OUTPUT_NONE;
                }
              case 0x0880:
              case 0x08C0:
                if ((opcode>>3 & 7) == 0) {
                    return INPUT_NONE | OUTPUT_NZVC;
                } else {
                    return INPUT_NONE | OUTPUT_NONE;
                }
              case 0x0A00:
              case 0x0A40:
              case 0x0A80:
              case 0x0AC0:
                return INPUT_NONE | OUTPUT_NZVC;
              case 0x0C00:
                return 0;
              case 0x0C40:
                switch (opcode>>3 & 7) {
                  case 0:
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                  case 5:
                    return INPUT_NONE | OUTPUT_NONE;
                  case 6:
                    switch (opcode & 7) {
                      case 0:
                      case 1:
                        return INPUT_NONE | OUTPUT_NONE;
                      case 2:
                      case 3:
                        return INPUT_NONE | OUTPUT_XNZVC;
                      case 4:
                        return 0;
                      case 5:
                        return INPUT_NONE | OUTPUT_NONE;
                      case 6:
                        return INPUT_V | OUTPUT_NONE;
                      case 7:
                        return INPUT_NONE | OUTPUT_XNZVC;
                    }
                  case 7:
                    return 0;
                }
              case 0x0C80:
              case 0x0CC0:
                return INPUT_NONE | OUTPUT_NONE;
              case 0x0E00:
              case 0x0E40:
                return 0;
              case 0x0E80:
              case 0x0EC0:
                return INPUT_NONE | OUTPUT_NONE;
            }
        }

      case 0x5:
        if ((opcode>>6 & 3) == 3) {
            return cond_inputs[opcode>>8 & 0xF] | OUTPUT_NONE;
        } else {
            if ((opcode>>3 & 7) == 1) {
                return INPUT_NONE | OUTPUT_NONE;
            } else {
                return INPUT_NONE | OUTPUT_XNZVC;
            }
        }

      case 0x6:

        return cond_inputs[opcode>>8 & 0xF] | OUTPUT_NONE;

      case 0x7:
        if (opcode & 0x0100) {
            return 0;
        } else {
            return INPUT_NONE | OUTPUT_NZVC;
        }

      case 0x8:
        if ((opcode>>6 & 3) == 3) {
            return INPUT_NONE | OUTPUT_NZVC;
        } else if ((opcode & 0x01F0) == 0x0100) {
            return INPUT_XZ | OUTPUT_XZC;
        } else {
            return INPUT_NONE | OUTPUT_NZVC;
        }

      case 0x9:
        if ((opcode>>6 & 3) == 3) {
            return INPUT_NONE | OUTPUT_NONE;
        } else if ((opcode & 0x0130) == 0x0100) {
            return INPUT_XZ | OUTPUT_XNZVC;
        } else {
            return INPUT_NONE | OUTPUT_XNZVC;
        }

      case 0xA:

        return 0;

      case 0xB:

        return INPUT_NONE | OUTPUT_NZVC;

      case 0xC:
        if ((opcode>>6 & 3) == 3) {
            return INPUT_NONE | OUTPUT_NZVC;
        } else if ((opcode & 0x01F0) == 0x0100) {
            return INPUT_XZ | OUTPUT_XZC;
        } else if ((opcode & 0x0130) == 0x0100) {
            return INPUT_NONE | OUTPUT_NONE;
        } else {
            return INPUT_NONE | OUTPUT_NZVC;
        }

      case 0xD:
        if ((opcode>>6 & 3) == 3) {
            return INPUT_NONE | OUTPUT_NONE;
        } else if ((opcode & 0x0130) == 0x0100) {
            return INPUT_XZ | OUTPUT_XNZVC;
        } else {
            return INPUT_NONE | OUTPUT_XNZVC;
        }

      case 0xE:

        return INPUT_X | OUTPUT_XNZVC;

      case 0xF:

        return 0;

    }

    return 0;
}
