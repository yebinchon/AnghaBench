
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int * opcodefunc ;


 int INSTRUCTION_A (int ) ;
 int INSTRUCTION_B (int ) ;
 int INSTRUCTION_C (int ) ;
 int INSTRUCTION_D (int ) ;
 int SH2add ;
 int SH2addc ;
 int SH2addi ;
 int SH2addv ;
 int SH2andi ;
 int SH2andm ;
 int SH2bf ;
 int SH2bfs ;
 int SH2bra ;
 int SH2braf ;
 int SH2bsr ;
 int SH2bsrf ;
 int SH2bt ;
 int SH2bts ;
 int SH2clrmac ;
 int SH2clrt ;
 int SH2cmpeq ;
 int SH2cmpge ;
 int SH2cmpgt ;
 int SH2cmphi ;
 int SH2cmphs ;
 int SH2cmpim ;
 int SH2cmppl ;
 int SH2cmppz ;
 int SH2cmpstr ;
 int SH2div0s ;
 int SH2div0u ;
 int SH2div1 ;
 int SH2dmuls ;
 int SH2dmulu ;
 int SH2dt ;
 int SH2extsb ;
 int SH2extsw ;
 int SH2extub ;
 int SH2extuw ;
 int SH2jmp ;
 int SH2jsr ;
 int SH2ldcgbr ;
 int SH2ldcmgbr ;
 int SH2ldcmsr ;
 int SH2ldcmvbr ;
 int SH2ldcsr ;
 int SH2ldcvbr ;
 int SH2ldsmach ;
 int SH2ldsmacl ;
 int SH2ldsmmach ;
 int SH2ldsmmacl ;
 int SH2ldsmpr ;
 int SH2ldspr ;
 int SH2macl ;
 int SH2macw ;
 int SH2mov ;
 int SH2mova ;
 int SH2movbl ;
 int SH2movbl0 ;
 int SH2movbl4 ;
 int SH2movblg ;
 int SH2movbm ;
 int SH2movbp ;
 int SH2movbs ;
 int SH2movbs0 ;
 int SH2movbs4 ;
 int SH2movbsg ;
 int SH2movi ;
 int SH2movli ;
 int SH2movll ;
 int SH2movll0 ;
 int SH2movll4 ;
 int SH2movllg ;
 int SH2movlm ;
 int SH2movlp ;
 int SH2movls ;
 int SH2movls0 ;
 int SH2movls4 ;
 int SH2movlsg ;
 int SH2movt ;
 int SH2movwi ;
 int SH2movwl ;
 int SH2movwl0 ;
 int SH2movwl4 ;
 int SH2movwlg ;
 int SH2movwm ;
 int SH2movwp ;
 int SH2movws ;
 int SH2movws0 ;
 int SH2movws4 ;
 int SH2movwsg ;
 int SH2mull ;
 int SH2muls ;
 int SH2mulu ;
 int SH2neg ;
 int SH2negc ;
 int SH2nop ;
 int SH2ori ;
 int SH2orm ;
 int SH2rotcl ;
 int SH2rotcr ;
 int SH2rotl ;
 int SH2rotr ;
 int SH2rte ;
 int SH2rts ;
 int SH2sett ;
 int SH2shal ;
 int SH2shar ;
 int SH2shll ;
 int SH2shll16 ;
 int SH2shll2 ;
 int SH2shll8 ;
 int SH2shlr ;
 int SH2shlr16 ;
 int SH2shlr2 ;
 int SH2shlr8 ;
 int SH2sleep ;
 int SH2stcgbr ;
 int SH2stcmgbr ;
 int SH2stcmsr ;
 int SH2stcmvbr ;
 int SH2stcsr ;
 int SH2stcvbr ;
 int SH2stsmach ;
 int SH2stsmacl ;
 int SH2stsmmach ;
 int SH2stsmmacl ;
 int SH2stsmpr ;
 int SH2stspr ;
 int SH2sub ;
 int SH2subc ;
 int SH2subv ;
 int SH2swapb ;
 int SH2swapw ;
 int SH2tas ;
 int SH2trapa ;
 int SH2tst ;
 int SH2tsti ;
 int SH2tstm ;
 int SH2undecoded ;
 int SH2xori ;
 int SH2xorm ;
 int SH2xtrct ;
 int SH2y_and ;
 int SH2y_not ;
 int SH2y_or ;
 int SH2y_xor ;

__attribute__((used)) static opcodefunc decode(u16 instruction)
{
   switch (INSTRUCTION_A(instruction))
   {
      case 0:
         switch (INSTRUCTION_D(instruction))
         {
            case 2:
               switch (INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2stcsr;
                  case 1: return &SH2stcgbr;
                  case 2: return &SH2stcvbr;
                  default: return &SH2undecoded;
               }

            case 3:
               switch (INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2bsrf;
                  case 2: return &SH2braf;
                  default: return &SH2undecoded;
               }

            case 4: return &SH2movbs0;
            case 5: return &SH2movws0;
            case 6: return &SH2movls0;
            case 7: return &SH2mull;
            case 8:
               switch (INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2clrt;
                  case 1: return &SH2sett;
                  case 2: return &SH2clrmac;
                  default: return &SH2undecoded;
               }
            case 9:
               switch (INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2nop;
                  case 1: return &SH2div0u;
                  case 2: return &SH2movt;
                  default: return &SH2undecoded;
               }
            case 10:
               switch (INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2stsmach;
                  case 1: return &SH2stsmacl;
                  case 2: return &SH2stspr;
                  default: return &SH2undecoded;
               }
            case 11:
               switch (INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2rts;
                  case 1: return &SH2sleep;
                  case 2: return &SH2rte;
                  default: return &SH2undecoded;
               }
            case 12: return &SH2movbl0;
            case 13: return &SH2movwl0;
            case 14: return &SH2movll0;
            case 15: return &SH2macl;
            default: return &SH2undecoded;
         }

      case 1: return &SH2movls4;
      case 2:
         switch (INSTRUCTION_D(instruction))
         {
            case 0: return &SH2movbs;
            case 1: return &SH2movws;
            case 2: return &SH2movls;
            case 4: return &SH2movbm;
            case 5: return &SH2movwm;
            case 6: return &SH2movlm;
            case 7: return &SH2div0s;
            case 8: return &SH2tst;
            case 9: return &SH2y_and;
            case 10: return &SH2y_xor;
            case 11: return &SH2y_or;
            case 12: return &SH2cmpstr;
            case 13: return &SH2xtrct;
            case 14: return &SH2mulu;
            case 15: return &SH2muls;
            default: return &SH2undecoded;
         }

      case 3:
         switch(INSTRUCTION_D(instruction))
         {
            case 0: return &SH2cmpeq;
            case 2: return &SH2cmphs;
            case 3: return &SH2cmpge;
            case 4: return &SH2div1;
            case 5: return &SH2dmulu;
            case 6: return &SH2cmphi;
            case 7: return &SH2cmpgt;
            case 8: return &SH2sub;
            case 10: return &SH2subc;
            case 11: return &SH2subv;
            case 12: return &SH2add;
            case 13: return &SH2dmuls;
            case 14: return &SH2addc;
            case 15: return &SH2addv;
            default: return &SH2undecoded;
         }

      case 4:
         switch(INSTRUCTION_D(instruction))
         {
            case 0:
               switch(INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2shll;
                  case 1: return &SH2dt;
                  case 2: return &SH2shal;
                  default: return &SH2undecoded;
               }
            case 1:
               switch(INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2shlr;
                  case 1: return &SH2cmppz;
                  case 2: return &SH2shar;
                  default: return &SH2undecoded;
               }
            case 2:
               switch(INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2stsmmach;
                  case 1: return &SH2stsmmacl;
                  case 2: return &SH2stsmpr;
                  default: return &SH2undecoded;
               }
            case 3:
               switch(INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2stcmsr;
                  case 1: return &SH2stcmgbr;
                  case 2: return &SH2stcmvbr;
                  default: return &SH2undecoded;
               }
            case 4:
               switch(INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2rotl;
                  case 2: return &SH2rotcl;
                  default: return &SH2undecoded;
               }
            case 5:
               switch(INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2rotr;
                  case 1: return &SH2cmppl;
                  case 2: return &SH2rotcr;
                  default: return &SH2undecoded;
               }
            case 6:
               switch(INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2ldsmmach;
                  case 1: return &SH2ldsmmacl;
                  case 2: return &SH2ldsmpr;
                  default: return &SH2undecoded;
               }
            case 7:
               switch(INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2ldcmsr;
                  case 1: return &SH2ldcmgbr;
                  case 2: return &SH2ldcmvbr;
                  default: return &SH2undecoded;
               }
            case 8:
               switch(INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2shll2;
                  case 1: return &SH2shll8;
                  case 2: return &SH2shll16;
                  default: return &SH2undecoded;
               }
            case 9:
               switch(INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2shlr2;
                  case 1: return &SH2shlr8;
                  case 2: return &SH2shlr16;
                  default: return &SH2undecoded;
               }
            case 10:
               switch(INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2ldsmach;
                  case 1: return &SH2ldsmacl;
                  case 2: return &SH2ldspr;
                  default: return &SH2undecoded;
               }
            case 11:
               switch(INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2jsr;
                  case 1: return &SH2tas;
                  case 2: return &SH2jmp;
                  default: return &SH2undecoded;
               }
            case 14:
               switch(INSTRUCTION_C(instruction))
               {
                  case 0: return &SH2ldcsr;
                  case 1: return &SH2ldcgbr;
                  case 2: return &SH2ldcvbr;
                  default: return &SH2undecoded;
               }
            case 15: return &SH2macw;
            default: return &SH2undecoded;
         }
      case 5: return &SH2movll4;
      case 6:
         switch (INSTRUCTION_D(instruction))
         {
            case 0: return &SH2movbl;
            case 1: return &SH2movwl;
            case 2: return &SH2movll;
            case 3: return &SH2mov;
            case 4: return &SH2movbp;
            case 5: return &SH2movwp;
            case 6: return &SH2movlp;
            case 7: return &SH2y_not;
            case 8: return &SH2swapb;
            case 9: return &SH2swapw;
            case 10: return &SH2negc;
            case 11: return &SH2neg;
            case 12: return &SH2extub;
            case 13: return &SH2extuw;
            case 14: return &SH2extsb;
            case 15: return &SH2extsw;
         }

      case 7: return &SH2addi;
      case 8:
         switch (INSTRUCTION_B(instruction))
         {
            case 0: return &SH2movbs4;
            case 1: return &SH2movws4;
            case 4: return &SH2movbl4;
            case 5: return &SH2movwl4;
            case 8: return &SH2cmpim;
            case 9: return &SH2bt;
            case 11: return &SH2bf;
            case 13: return &SH2bts;
            case 15: return &SH2bfs;
            default: return &SH2undecoded;
         }
      case 9: return &SH2movwi;
      case 10: return &SH2bra;
      case 11: return &SH2bsr;
      case 12:
         switch(INSTRUCTION_B(instruction))
         {
            case 0: return &SH2movbsg;
            case 1: return &SH2movwsg;
            case 2: return &SH2movlsg;
            case 3: return &SH2trapa;
            case 4: return &SH2movblg;
            case 5: return &SH2movwlg;
            case 6: return &SH2movllg;
            case 7: return &SH2mova;
            case 8: return &SH2tsti;
            case 9: return &SH2andi;
            case 10: return &SH2xori;
            case 11: return &SH2ori;
            case 12: return &SH2tstm;
            case 13: return &SH2andm;
            case 14: return &SH2xorm;
            case 15: return &SH2orm;
         }

      case 13: return &SH2movli;
      case 14: return &SH2movi;
      default: return &SH2undecoded;
   }
}
