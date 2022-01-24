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
struct tftphdr {scalar_t__ th_opcode; unsigned short th_block; } ;
struct testcase {int writedelay; } ;
struct formats {int /*<<< orphan*/  f_convert; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/ * storage; struct tftphdr hdr; } ;

/* Variables and functions */
 int SEGSIZE ; 
 int /*<<< orphan*/  SIGALRM ; 
 TYPE_1__ ackbuf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ got_exit_signal ; 
 void* FUNC1 (unsigned short volatile) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 void* FUNC5 (unsigned short) ; 
 scalar_t__ opcode_ACK ; 
 scalar_t__ opcode_DATA ; 
 scalar_t__ opcode_ERROR ; 
 int /*<<< orphan*/  peer ; 
 struct tftphdr* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct testcase*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct testcase*,struct tftphdr**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rexmtval ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct tftphdr* volatile,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ timeout ; 
 int /*<<< orphan*/  timeoutbuf ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct testcase *test, struct formats *pf)
{
  int size;
  ssize_t n;
  /* These are volatile to live through a siglongjmp */
  volatile unsigned short sendblock; /* block count */
  struct tftphdr * volatile sdp = FUNC6(); /* data buffer */
  struct tftphdr * const sap = &ackbuf.hdr; /* ack buffer */

  sendblock = 1;
#if defined(HAVE_ALARM) && defined(SIGALRM)
  mysignal(SIGALRM, timer);
#endif
  do {
    size = FUNC8(test, (struct tftphdr **)&sdp, pf->f_convert);
    if(size < 0) {
      FUNC4(errno + 100);
      return;
    }
    sdp->th_opcode = FUNC1((unsigned short)opcode_DATA);
    sdp->th_block = FUNC1(sendblock);
    timeout = 0;
#ifdef HAVE_SIGSETJMP
    (void) sigsetjmp(timeoutbuf, 1);
#endif
    if(test->writedelay) {
      FUNC2("Pausing %d seconds before %d bytes", test->writedelay,
             size);
      FUNC13(1000*test->writedelay);
    }

    send_data:
    if(FUNC11(peer, sdp, size + 4) != size + 4) {
      FUNC2("write");
      return;
    }
    FUNC7(test, pf->f_convert);
    for(;;) {
#ifdef HAVE_ALARM
      alarm(rexmtval);        /* read the ack */
#endif
      n = FUNC10(peer, &ackbuf.storage[0], sizeof(ackbuf.storage));
#ifdef HAVE_ALARM
      alarm(0);
#endif
      if(got_exit_signal)
        return;
      if(n < 0) {
        FUNC2("read: fail");
        return;
      }
      sap->th_opcode = FUNC5((unsigned short)sap->th_opcode);
      sap->th_block = FUNC5(sap->th_block);

      if(sap->th_opcode == opcode_ERROR) {
        FUNC2("got ERROR");
        return;
      }

      if(sap->th_opcode == opcode_ACK) {
        if(sap->th_block == sendblock) {
          break;
        }
        /* Re-synchronize with the other side */
        (void) FUNC12(peer);
        if(sap->th_block == (sendblock-1)) {
          goto send_data;
        }
      }

    }
    sendblock++;
  } while(size == SEGSIZE);
}