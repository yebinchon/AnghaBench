#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tftphdr {scalar_t__ th_opcode; unsigned short th_block; } ;
struct testcase {int dummy; } ;
struct formats {int /*<<< orphan*/  f_convert; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/ * storage; struct tftphdr hdr; } ;
struct TYPE_3__ {struct tftphdr* storage; } ;

/* Variables and functions */
 scalar_t__ ENOSPACE ; 
 int PKTSIZE ; 
 scalar_t__ SEGSIZE ; 
 int /*<<< orphan*/  SIGALRM ; 
 TYPE_2__ ackbuf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ buf ; 
 scalar_t__ errno ; 
 scalar_t__ got_exit_signal ; 
 void* FUNC1 (unsigned short volatile) ; 
 int /*<<< orphan*/  justtimeout ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 void* FUNC5 (unsigned short) ; 
 scalar_t__ opcode_ACK ; 
 scalar_t__ opcode_DATA ; 
 scalar_t__ opcode_ERROR ; 
 int /*<<< orphan*/  peer ; 
 int /*<<< orphan*/  rexmtval ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct tftphdr* volatile,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ timeout ; 
 int /*<<< orphan*/  timeoutbuf ; 
 int /*<<< orphan*/  timer ; 
 struct tftphdr* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct testcase*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct testcase*,struct tftphdr* volatile*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct testcase *test, struct formats *pf)
{
  ssize_t n, size;
  /* These are volatile to live through a siglongjmp */
  volatile unsigned short recvblock; /* block count */
  struct tftphdr * volatile rdp;     /* data buffer */
  struct tftphdr *rap;      /* ack buffer */

  recvblock = 0;
  rdp = FUNC10();
#if defined(HAVE_ALARM) && defined(SIGALRM)
  mysignal(SIGALRM, timer);
#endif
  rap = &ackbuf.hdr;
  do {
    timeout = 0;
    rap->th_opcode = FUNC1((unsigned short)opcode_ACK);
    rap->th_block = FUNC1(recvblock);
    recvblock++;
#ifdef HAVE_SIGSETJMP
    (void) sigsetjmp(timeoutbuf, 1);
#endif
send_ack:
    if(FUNC8(peer, &ackbuf.storage[0], 4) != 4) {
      FUNC2("write: fail\n");
      goto abort;
    }
    FUNC11(test, pf->f_convert);
    for(;;) {
#ifdef HAVE_ALARM
      alarm(rexmtval);
#endif
      n = FUNC7(peer, rdp, PKTSIZE);
#ifdef HAVE_ALARM
      alarm(0);
#endif
      if(got_exit_signal)
        goto abort;
      if(n < 0) {                       /* really? */
        FUNC2("read: fail\n");
        goto abort;
      }
      rdp->th_opcode = FUNC5((unsigned short)rdp->th_opcode);
      rdp->th_block = FUNC5(rdp->th_block);
      if(rdp->th_opcode == opcode_ERROR)
        goto abort;
      if(rdp->th_opcode == opcode_DATA) {
        if(rdp->th_block == recvblock) {
          break;                         /* normal */
        }
        /* Re-synchronize with the other side */
        (void) FUNC9(peer);
        if(rdp->th_block == (recvblock-1))
          goto send_ack;                 /* rexmit */
      }
    }

    size = FUNC12(test, &rdp, (int)(n - 4), pf->f_convert);
    if(size != (n-4)) {                 /* ahem */
      if(size < 0)
        FUNC4(errno + 100);
      else
        FUNC4(ENOSPACE);
      goto abort;
    }
  } while(size == SEGSIZE);
  FUNC11(test, pf->f_convert);

  rap->th_opcode = FUNC1((unsigned short)opcode_ACK);  /* send the "final"
                                                          ack */
  rap->th_block = FUNC1(recvblock);
  (void) FUNC8(peer, &ackbuf.storage[0], 4);
#if defined(HAVE_ALARM) && defined(SIGALRM)
  mysignal(SIGALRM, justtimeout);        /* just abort read on timeout */
  alarm(rexmtval);
#endif
  /* normally times out and quits */
  n = FUNC7(peer, &buf.storage[0], sizeof(buf.storage));
#ifdef HAVE_ALARM
  alarm(0);
#endif
  if(got_exit_signal)
    goto abort;
  if(n >= 4 &&                               /* if read some data */
     rdp->th_opcode == opcode_DATA &&        /* and got a data block */
     recvblock == rdp->th_block) {           /* then my last ack was lost */
    (void) FUNC8(peer, &ackbuf.storage[0], 4);  /* resend final ack */
  }
abort:
  return;
}