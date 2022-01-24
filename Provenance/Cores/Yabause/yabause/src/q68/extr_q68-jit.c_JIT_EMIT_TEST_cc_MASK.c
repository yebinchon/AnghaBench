#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Q68JitEntry ;

/* Variables and functions */
#define  COND_CC 143 
#define  COND_CS 142 
#define  COND_EQ 141 
#define  COND_F 140 
#define  COND_GE 139 
#define  COND_GT 138 
#define  COND_HI 137 
#define  COND_LE 136 
#define  COND_LS 135 
#define  COND_LT 134 
#define  COND_MI 133 
#define  COND_NE 132 
#define  COND_PL 131 
#define  COND_T 130 
#define  COND_VC 129 
#define  COND_VS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC16(int cond, Q68JitEntry *entry)
{
    switch ((cond)) {
        case COND_T:  FUNC13 (entry); break;
        case COND_F:  FUNC3 (entry); break;
        case COND_HI: FUNC6(entry); break;
        case COND_LS: FUNC8(entry); break;
        case COND_CC: FUNC0(entry); break;
        case COND_CS: FUNC1(entry); break;
        case COND_NE: FUNC11(entry); break;
        case COND_EQ: FUNC2(entry); break;
        case COND_VC: FUNC14(entry); break;
        case COND_VS: FUNC15(entry); break;
        case COND_PL: FUNC12(entry); break;
        case COND_MI: FUNC10(entry); break;
        case COND_GE: FUNC4(entry); break;
        case COND_LT: FUNC9(entry); break;
        case COND_GT: FUNC5(entry); break;
        case COND_LE: FUNC7(entry); break;
    }
}