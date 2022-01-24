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

/* Variables and functions */
 int /*<<< orphan*/  DivisionByZeroError ; 
 int /*<<< orphan*/  IllegalInstructionError ; 
 int /*<<< orphan*/  ProgramAbortedError ; 
 int /*<<< orphan*/  ProgramInterruptedError ; 
 int /*<<< orphan*/  ProgramTerminationError ; 
#define  SIGABRT 133 
#define  SIGFPE 132 
#define  SIGILL 131 
#define  SIGINT 130 
#define  SIGSEGV 129 
#define  SIGTERM 128 
 int /*<<< orphan*/  SegmentationError ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1(int sig) {
  switch(sig) {
    case SIGABRT: FUNC0(ProgramAbortedError, "Program Aborted");
    case SIGFPE:  FUNC0(DivisionByZeroError, "Division by Zero");
    case SIGILL:  FUNC0(IllegalInstructionError, "Illegal Instruction");
    case SIGINT:  FUNC0(ProgramInterruptedError, "Program Interrupted");
    case SIGSEGV: FUNC0(SegmentationError, "Segmentation fault");
    case SIGTERM: FUNC0(ProgramTerminationError, "Program Terminated");
  }
}