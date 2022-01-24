#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tftphdr {int /*<<< orphan*/  th_msg; void* th_code; void* th_opcode; } ;
struct errmsg {int e_code; int /*<<< orphan*/  e_msg; } ;
struct TYPE_2__ {int /*<<< orphan*/ * storage; struct tftphdr hdr; } ;

/* Variables and functions */
 void* EUNDEF ; 
 TYPE_1__ buf ; 
 struct errmsg* errmsgs ; 
 void* FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ opcode_ERROR ; 
 int /*<<< orphan*/  peer ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(int error)
{
  struct tftphdr *tp;
  int length;
  struct errmsg *pe;

  tp = &buf.hdr;
  tp->th_opcode = FUNC0((unsigned short)opcode_ERROR);
  tp->th_code = FUNC0((unsigned short)error);
  for(pe = errmsgs; pe->e_code >= 0; pe++)
    if(pe->e_code == error)
      break;
  if(pe->e_code < 0) {
    pe->e_msg = FUNC3(error - 100);
    tp->th_code = EUNDEF;   /* set 'undef' errorcode */
  }
  length = (int)FUNC4(pe->e_msg);

  /* we use memcpy() instead of strcpy() in order to avoid buffer overflow
   * report from glibc with FORTIFY_SOURCE */
  FUNC2(tp->th_msg, pe->e_msg, length + 1);
  length += 5;
  if(FUNC5(peer, &buf.storage[0], length) != length)
    FUNC1("nak: fail\n");
}