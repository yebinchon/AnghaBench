
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Q68JitEntry ;
 int JIT_EMIT_TEST_CC (int *) ;
 int JIT_EMIT_TEST_CS (int *) ;
 int JIT_EMIT_TEST_EQ (int *) ;
 int JIT_EMIT_TEST_F (int *) ;
 int JIT_EMIT_TEST_GE (int *) ;
 int JIT_EMIT_TEST_GT (int *) ;
 int JIT_EMIT_TEST_HI (int *) ;
 int JIT_EMIT_TEST_LE (int *) ;
 int JIT_EMIT_TEST_LS (int *) ;
 int JIT_EMIT_TEST_LT (int *) ;
 int JIT_EMIT_TEST_MI (int *) ;
 int JIT_EMIT_TEST_NE (int *) ;
 int JIT_EMIT_TEST_PL (int *) ;
 int JIT_EMIT_TEST_T (int *) ;
 int JIT_EMIT_TEST_VC (int *) ;
 int JIT_EMIT_TEST_VS (int *) ;

__attribute__((used)) static inline void JIT_EMIT_TEST_cc(int cond, Q68JitEntry *entry)
{
    switch ((cond)) {
        case 130: JIT_EMIT_TEST_T (entry); break;
        case 140: JIT_EMIT_TEST_F (entry); break;
        case 137: JIT_EMIT_TEST_HI(entry); break;
        case 135: JIT_EMIT_TEST_LS(entry); break;
        case 143: JIT_EMIT_TEST_CC(entry); break;
        case 142: JIT_EMIT_TEST_CS(entry); break;
        case 132: JIT_EMIT_TEST_NE(entry); break;
        case 141: JIT_EMIT_TEST_EQ(entry); break;
        case 129: JIT_EMIT_TEST_VC(entry); break;
        case 128: JIT_EMIT_TEST_VS(entry); break;
        case 131: JIT_EMIT_TEST_PL(entry); break;
        case 133: JIT_EMIT_TEST_MI(entry); break;
        case 139: JIT_EMIT_TEST_GE(entry); break;
        case 134: JIT_EMIT_TEST_LT(entry); break;
        case 138: JIT_EMIT_TEST_GT(entry); break;
        case 136: JIT_EMIT_TEST_LE(entry); break;
    }
}
