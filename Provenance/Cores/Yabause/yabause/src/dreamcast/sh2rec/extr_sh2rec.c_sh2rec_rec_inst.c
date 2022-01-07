
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_145__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_145__ {int pc; } ;
typedef TYPE_1__ sh2rec_block_t ;


 int INSTRUCTION_A (int ) ;
 int INSTRUCTION_B (int ) ;
 int INSTRUCTION_C (int ) ;
 int INSTRUCTION_D (int ) ;
 int MappedMemoryReadWord (int ) ;
 int generateADD (int ,TYPE_1__*) ;
 int generateADDC (int ,TYPE_1__*) ;
 int generateADDI (int ,TYPE_1__*) ;
 int generateADDV (int ,TYPE_1__*) ;
 int generateAND (int ,TYPE_1__*) ;
 int generateANDI (int ,TYPE_1__*) ;
 int generateANDM (int ,TYPE_1__*) ;
 int generateBF (int ,TYPE_1__*) ;
 int generateBFS (int ,TYPE_1__*) ;
 int generateBRA (int ,TYPE_1__*) ;
 int generateBRAF (int ,TYPE_1__*) ;
 int generateBSR (int ,TYPE_1__*) ;
 int generateBSRF (int ,TYPE_1__*) ;
 int generateBT (int ,TYPE_1__*) ;
 int generateBTS (int ,TYPE_1__*) ;
 int generateCLRMAC (int ,TYPE_1__*) ;
 int generateCLRT (int ,TYPE_1__*) ;
 int generateCMPEQ (int ,TYPE_1__*) ;
 int generateCMPGE (int ,TYPE_1__*) ;
 int generateCMPGT (int ,TYPE_1__*) ;
 int generateCMPHI (int ,TYPE_1__*) ;
 int generateCMPHS (int ,TYPE_1__*) ;
 int generateCMPIM (int ,TYPE_1__*) ;
 int generateCMPPL (int ,TYPE_1__*) ;
 int generateCMPPZ (int ,TYPE_1__*) ;
 int generateCMPSTR (int ,TYPE_1__*) ;
 int generateDIV0S (int ,TYPE_1__*) ;
 int generateDIV0U (int ,TYPE_1__*) ;
 int generateDIV1 (int ,TYPE_1__*) ;
 int generateDMULS (int ,TYPE_1__*) ;
 int generateDMULU (int ,TYPE_1__*) ;
 int generateDT (int ,TYPE_1__*) ;
 int generateEXTSB (int ,TYPE_1__*) ;
 int generateEXTSW (int ,TYPE_1__*) ;
 int generateEXTUB (int ,TYPE_1__*) ;
 int generateEXTUW (int ,TYPE_1__*) ;
 int generateJMP (int ,TYPE_1__*) ;
 int generateJSR (int ,TYPE_1__*) ;
 int generateLDCGBR (int ,TYPE_1__*) ;
 int generateLDCMGBR (int ,TYPE_1__*) ;
 int generateLDCMSR (int ,TYPE_1__*) ;
 int generateLDCMVBR (int ,TYPE_1__*) ;
 int generateLDCSR (int ,TYPE_1__*) ;
 int generateLDCVBR (int ,TYPE_1__*) ;
 int generateLDSMACH (int ,TYPE_1__*) ;
 int generateLDSMACL (int ,TYPE_1__*) ;
 int generateLDSMMACH (int ,TYPE_1__*) ;
 int generateLDSMMACL (int ,TYPE_1__*) ;
 int generateLDSMPR (int ,TYPE_1__*) ;
 int generateLDSPR (int ,TYPE_1__*) ;
 int generateMACL (int ,TYPE_1__*) ;
 int generateMACW (int ,TYPE_1__*) ;
 int generateMOV (int ,TYPE_1__*) ;
 int generateMOVA (int ,TYPE_1__*) ;
 int generateMOVBL (int ,TYPE_1__*) ;
 int generateMOVBL0 (int ,TYPE_1__*) ;
 int generateMOVBL4 (int ,TYPE_1__*) ;
 int generateMOVBLG (int ,TYPE_1__*) ;
 int generateMOVBM (int ,TYPE_1__*) ;
 int generateMOVBP (int ,TYPE_1__*) ;
 int generateMOVBS (int ,TYPE_1__*) ;
 int generateMOVBS0 (int ,TYPE_1__*) ;
 int generateMOVBS4 (int ,TYPE_1__*) ;
 int generateMOVBSG (int ,TYPE_1__*) ;
 int generateMOVI (int ,TYPE_1__*) ;
 int generateMOVLI (int ,TYPE_1__*) ;
 int generateMOVLL (int ,TYPE_1__*) ;
 int generateMOVLL0 (int ,TYPE_1__*) ;
 int generateMOVLL4 (int ,TYPE_1__*) ;
 int generateMOVLLG (int ,TYPE_1__*) ;
 int generateMOVLM (int ,TYPE_1__*) ;
 int generateMOVLP (int ,TYPE_1__*) ;
 int generateMOVLS (int ,TYPE_1__*) ;
 int generateMOVLS0 (int ,TYPE_1__*) ;
 int generateMOVLS4 (int ,TYPE_1__*) ;
 int generateMOVLSG (int ,TYPE_1__*) ;
 int generateMOVT (int ,TYPE_1__*) ;
 int generateMOVWI (int ,TYPE_1__*) ;
 int generateMOVWL (int ,TYPE_1__*) ;
 int generateMOVWL0 (int ,TYPE_1__*) ;
 int generateMOVWL4 (int ,TYPE_1__*) ;
 int generateMOVWLG (int ,TYPE_1__*) ;
 int generateMOVWM (int ,TYPE_1__*) ;
 int generateMOVWP (int ,TYPE_1__*) ;
 int generateMOVWS (int ,TYPE_1__*) ;
 int generateMOVWS0 (int ,TYPE_1__*) ;
 int generateMOVWS4 (int ,TYPE_1__*) ;
 int generateMOVWSG (int ,TYPE_1__*) ;
 int generateMULL (int ,TYPE_1__*) ;
 int generateMULS (int ,TYPE_1__*) ;
 int generateMULU (int ,TYPE_1__*) ;
 int generateNEG (int ,TYPE_1__*) ;
 int generateNEGC (int ,TYPE_1__*) ;
 int generateNOP (int ,TYPE_1__*) ;
 int generateNOT (int ,TYPE_1__*) ;
 int generateOR (int ,TYPE_1__*) ;
 int generateORI (int ,TYPE_1__*) ;
 int generateORM (int ,TYPE_1__*) ;
 int generateROTCL (int ,TYPE_1__*) ;
 int generateROTCR (int ,TYPE_1__*) ;
 int generateROTL (int ,TYPE_1__*) ;
 int generateROTR (int ,TYPE_1__*) ;
 int generateRTE (int ,TYPE_1__*) ;
 int generateRTS (int ,TYPE_1__*) ;
 int generateSETT (int ,TYPE_1__*) ;
 int generateSHAL (int ,TYPE_1__*) ;
 int generateSHAR (int ,TYPE_1__*) ;
 int generateSHLL (int ,TYPE_1__*) ;
 int generateSHLL16 (int ,TYPE_1__*) ;
 int generateSHLL2 (int ,TYPE_1__*) ;
 int generateSHLL8 (int ,TYPE_1__*) ;
 int generateSHLR (int ,TYPE_1__*) ;
 int generateSHLR16 (int ,TYPE_1__*) ;
 int generateSHLR2 (int ,TYPE_1__*) ;
 int generateSHLR8 (int ,TYPE_1__*) ;
 int generateSLEEP (int ,TYPE_1__*) ;
 int generateSTCGBR (int ,TYPE_1__*) ;
 int generateSTCMGBR (int ,TYPE_1__*) ;
 int generateSTCMSR (int ,TYPE_1__*) ;
 int generateSTCMVBR (int ,TYPE_1__*) ;
 int generateSTCSR (int ,TYPE_1__*) ;
 int generateSTCVBR (int ,TYPE_1__*) ;
 int generateSTSMACH (int ,TYPE_1__*) ;
 int generateSTSMACL (int ,TYPE_1__*) ;
 int generateSTSMMACH (int ,TYPE_1__*) ;
 int generateSTSMMACL (int ,TYPE_1__*) ;
 int generateSTSMPR (int ,TYPE_1__*) ;
 int generateSTSPR (int ,TYPE_1__*) ;
 int generateSUB (int ,TYPE_1__*) ;
 int generateSUBC (int ,TYPE_1__*) ;
 int generateSUBV (int ,TYPE_1__*) ;
 int generateSWAPB (int ,TYPE_1__*) ;
 int generateSWAPW (int ,TYPE_1__*) ;
 int generateTAS (int ,TYPE_1__*) ;
 int generateTRAPA (int ,TYPE_1__*) ;
 int generateTST (int ,TYPE_1__*) ;
 int generateTSTI (int ,TYPE_1__*) ;
 int generateTSTM (int ,TYPE_1__*) ;
 int generateXOR (int ,TYPE_1__*) ;
 int generateXORI (int ,TYPE_1__*) ;
 int generateXORM (int ,TYPE_1__*) ;
 int generateXTRCT (int ,TYPE_1__*) ;

int sh2rec_rec_inst(sh2rec_block_t *b, int isdelay) {
    uint16_t inst = MappedMemoryReadWord(b->pc);
    int done = 0;

    switch(INSTRUCTION_A(inst)) {
        case 0:
            switch(INSTRUCTION_D(inst)) {
                case 2:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateSTCSR(inst, b); break;
                        case 1: generateSTCGBR(inst, b); break;
                        case 2: generateSTCVBR(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 3:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateBSRF(inst, b); done = 1; break;
                        case 2: generateBRAF(inst, b); done = 1; break;
                        default: return -1;
                    }
                    break;

                case 4: generateMOVBS0(inst, b); break;
                case 5: generateMOVWS0(inst, b); break;
                case 6: generateMOVLS0(inst, b); break;
                case 7: generateMULL(inst, b); break;
                case 8:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateCLRT(inst, b); break;
                        case 1: generateSETT(inst, b); break;
                        case 2: generateCLRMAC(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 9:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateNOP(inst, b); break;
                        case 1: generateDIV0U(inst, b); break;
                        case 2: generateMOVT(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 10:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateSTSMACH(inst, b); break;
                        case 1: generateSTSMACL(inst, b); break;
                        case 2: generateSTSPR(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 11:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateRTS(inst, b); done = 1; break;
                        case 1: generateSLEEP(inst, b); break;
                        case 2: generateRTE(inst, b); done = 1; break;
                        default: return -1;
                    }
                    break;

                case 12: generateMOVBL0(inst, b); break;
                case 13: generateMOVWL0(inst, b); break;
                case 14: generateMOVLL0(inst, b); break;
                case 15: generateMACL(inst, b); break;
                default: return -1;
            }
            break;

        case 1: generateMOVLS4(inst, b); break;
        case 2:
            switch(INSTRUCTION_D(inst)) {
                case 0: generateMOVBS(inst, b); break;
                case 1: generateMOVWS(inst, b); break;
                case 2: generateMOVLS(inst, b); break;
                case 4: generateMOVBM(inst, b); break;
                case 5: generateMOVWM(inst, b); break;
                case 6: generateMOVLM(inst, b); break;
                case 7: generateDIV0S(inst, b); break;
                case 8: generateTST(inst, b); break;
                case 9: generateAND(inst, b); break;
                case 10: generateXOR(inst, b); break;
                case 11: generateOR(inst, b); break;
                case 12: generateCMPSTR(inst, b); break;
                case 13: generateXTRCT(inst, b); break;
                case 14: generateMULU(inst, b); break;
                case 15: generateMULS(inst, b); break;
                default: return -1;
            }
            break;

        case 3:
            switch(INSTRUCTION_D(inst)) {
                case 0: generateCMPEQ(inst, b); break;
                case 2: generateCMPHS(inst, b); break;
                case 3: generateCMPGE(inst, b); break;
                case 4: generateDIV1(inst, b); break;
                case 5: generateDMULU(inst, b); break;
                case 6: generateCMPHI(inst, b); break;
                case 7: generateCMPGT(inst, b); break;
                case 8: generateSUB(inst, b); break;
                case 10: generateSUBC(inst, b); break;
                case 11: generateSUBV(inst, b); break;
                case 12: generateADD(inst, b); break;
                case 13: generateDMULS(inst, b); break;
                case 14: generateADDC(inst, b); break;
                case 15: generateADDV(inst, b); break;
                default: return -1;
            }
            break;

        case 4:
            switch(INSTRUCTION_D(inst)) {
                case 0:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateSHLL(inst, b); break;
                        case 1: generateDT(inst, b); break;
                        case 2: generateSHAL(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 1:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateSHLR(inst, b); break;
                        case 1: generateCMPPZ(inst, b); break;
                        case 2: generateSHAR(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 2:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateSTSMMACH(inst, b); break;
                        case 1: generateSTSMMACL(inst, b); break;
                        case 2: generateSTSMPR(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 3:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateSTCMSR(inst, b); break;
                        case 1: generateSTCMGBR(inst, b); break;
                        case 2: generateSTCMVBR(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 4:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateROTL(inst, b); break;
                        case 2: generateROTCL(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 5:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateROTR(inst, b); break;
                        case 1: generateCMPPL(inst, b); break;
                        case 2: generateROTCR(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 6:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateLDSMMACH(inst, b); break;
                        case 1: generateLDSMMACL(inst, b); break;
                        case 2: generateLDSMPR(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 7:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateLDCMSR(inst, b); break;
                        case 1: generateLDCMGBR(inst, b); break;
                        case 2: generateLDCMVBR(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 8:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateSHLL2(inst, b); break;
                        case 1: generateSHLL8(inst, b); break;
                        case 2: generateSHLL16(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 9:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateSHLR2(inst, b); break;
                        case 1: generateSHLR8(inst, b); break;
                        case 2: generateSHLR16(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 10:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateLDSMACH(inst, b); break;
                        case 1: generateLDSMACL(inst, b); break;
                        case 2: generateLDSPR(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 11:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateJSR(inst, b); done = 1; break;
                        case 1: generateTAS(inst, b); break;
                        case 2: generateJMP(inst, b); done = 1; break;
                        default: return -1;
                    }
                    break;

                case 14:
                    switch(INSTRUCTION_C(inst)) {
                        case 0: generateLDCSR(inst, b); break;
                        case 1: generateLDCGBR(inst, b); break;
                        case 2: generateLDCVBR(inst, b); break;
                        default: return -1;
                    }
                    break;

                case 15: generateMACW(inst, b); break;
                default: return -1;
            }
            break;

        case 5: generateMOVLL4(inst, b); break;

        case 6:
            switch(INSTRUCTION_D(inst)) {
                case 0: generateMOVBL(inst, b); break;
                case 1: generateMOVWL(inst, b); break;
                case 2: generateMOVLL(inst, b); break;
                case 3: generateMOV(inst, b); break;
                case 4: generateMOVBP(inst, b); break;
                case 5: generateMOVWP(inst, b); break;
                case 6: generateMOVLP(inst, b); break;
                case 7: generateNOT(inst, b); break;
                case 8: generateSWAPB(inst, b); break;
                case 9: generateSWAPW(inst, b); break;
                case 10: generateNEGC(inst, b); break;
                case 11: generateNEG(inst, b); break;
                case 12: generateEXTUB(inst, b); break;
                case 13: generateEXTUW(inst, b); break;
                case 14: generateEXTSB(inst, b); break;
                case 15: generateEXTSW(inst, b); break;
            }
            break;

        case 7: generateADDI(inst, b); break;

        case 8:
            switch(INSTRUCTION_B(inst)) {
                case 0: generateMOVBS4(inst, b); break;
                case 1: generateMOVWS4(inst, b); break;
                case 4: generateMOVBL4(inst, b); break;
                case 5: generateMOVWL4(inst, b); break;
                case 8: generateCMPIM(inst, b); break;
                case 9: generateBT(inst, b); done = 1; break;
                case 11: generateBF(inst, b); done = 1; break;
                case 13: generateBTS(inst, b); done = 1; break;
                case 15: generateBFS(inst, b); done = 1; break;
                default: return -1;
            }
            break;

        case 9: generateMOVWI(inst, b); break;
        case 10: generateBRA(inst, b); done = 1; break;
        case 11: generateBSR(inst, b); done = 1; break;

        case 12:
            switch(INSTRUCTION_B(inst)) {
                case 0: generateMOVBSG(inst, b); break;
                case 1: generateMOVWSG(inst, b); break;
                case 2: generateMOVLSG(inst, b); break;
                case 3: generateTRAPA(inst, b); done = 1; break;
                case 4: generateMOVBLG(inst, b); break;
                case 5: generateMOVWLG(inst, b); break;
                case 6: generateMOVLLG(inst, b); break;
                case 7: generateMOVA(inst, b); break;
                case 8: generateTSTI(inst, b); break;
                case 9: generateANDI(inst, b); break;
                case 10: generateXORI(inst, b); break;
                case 11: generateORI(inst, b); break;
                case 12: generateTSTM(inst, b); break;
                case 13: generateANDM(inst, b); break;
                case 14: generateXORM(inst, b); break;
                case 15: generateORM(inst, b); break;
            }
            break;

        case 13: generateMOVLI(inst, b); break;
        case 14: generateMOVI(inst, b); break;
        default: return -1;
    }

    return done;
}
