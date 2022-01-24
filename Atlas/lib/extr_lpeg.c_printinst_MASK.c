#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t code; int aux; int offset; } ;
struct TYPE_10__ {TYPE_1__ i; int /*<<< orphan*/  buff; } ;
typedef  int /*<<< orphan*/  Opcode ;
typedef  TYPE_2__ Instruction ;

/* Variables and functions */
#define  IAny 150 
#define  IBackCommit 149 
#define  ICall 148 
#define  IChar 147 
#define  IChoice 146 
#define  ICloseCapture 145 
#define  ICloseRunTime 144 
#define  ICommit 143 
#define  IEmptyCapture 142 
#define  IEmptyCaptureIdx 141 
#define  IFullCapture 140 
#define  IJmp 139 
#define  IOpenCall 138 
#define  IOpenCapture 137 
#define  IPartialCommit 136 
#define  ISet 135 
#define  ISpan 134 
#define  ISpanZ 133 
#define  ITestAny 132 
#define  ITestChar 131 
#define  ITestSet 130 
#define  ITestZSet 129 
#define  IZSet 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 int FUNC1 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const*,TYPE_2__ const*) ; 

__attribute__((used)) static void FUNC6 (const Instruction *op, const Instruction *p) {
  const char *const names[] = {
    "any", "char", "set", "zset",
    "testany", "testchar", "testset", "testzset",
    "span", "spanz",
    "ret", "end",
    "choice", "jmp", "call", "open_call",
    "commit", "partial_commit", "back_commit", "failtwice", "fail", "giveup",
     "func",
     "fullcapture", "emptycapture", "emptycaptureidx", "opencapture",
     "closecapture", "closeruntime"
  };
  FUNC4("%02ld: %s ", (long)(p - op), names[p->i.code]);
  switch ((Opcode)p->i.code) {
    case IChar: {
      FUNC4("'%c'", p->i.aux);
      break;
    }
    case ITestChar: {
      FUNC4("'%c'", p->i.aux);
      FUNC5(op, p);
      break;
    }
    case IAny: {
      FUNC4("* %d", p->i.aux);
      break;
    }
    case ITestAny: {
      FUNC4("* %d", p->i.aux);
      FUNC5(op, p);
      break;
    }
    case IFullCapture: case IOpenCapture:
    case IEmptyCapture: case IEmptyCaptureIdx:
    case ICloseCapture: case ICloseRunTime: {
      FUNC2(FUNC0(p));
      FUNC4("(n = %d)  (off = %d)", FUNC1(p), p->i.offset);
      break;
    }
    case ISet: case IZSet: case ISpan: case ISpanZ: {
      FUNC3((p+1)->buff);
      break;
    }
    case ITestSet: case ITestZSet: {
      FUNC3((p+1)->buff);
      FUNC5(op, p);
      break;
    }
    case IOpenCall: {
      FUNC4("-> %d", p->i.offset);
      break;
    }
    case IChoice: {
      FUNC5(op, p);
      FUNC4(" (%d)", p->i.aux);
      break;
    }
    case IJmp: case ICall: case ICommit:
    case IPartialCommit: case IBackCommit: {
      FUNC5(op, p);
      break;
    }
    default: break;
  }
  FUNC4("\n");
}