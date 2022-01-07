
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tftphdr {scalar_t__ th_opcode; unsigned short th_block; } ;
struct testcase {int dummy; } ;
struct formats {int f_convert; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {int * storage; struct tftphdr hdr; } ;
struct TYPE_3__ {struct tftphdr* storage; } ;


 scalar_t__ ENOSPACE ;
 int PKTSIZE ;
 scalar_t__ SEGSIZE ;
 int SIGALRM ;
 TYPE_2__ ackbuf ;
 int alarm (int ) ;
 TYPE_1__ buf ;
 scalar_t__ errno ;
 scalar_t__ got_exit_signal ;
 void* htons (unsigned short volatile) ;
 int justtimeout ;
 int logmsg (char*) ;
 int mysignal (int ,int ) ;
 int nak (scalar_t__) ;
 void* ntohs (unsigned short) ;
 scalar_t__ opcode_ACK ;
 scalar_t__ opcode_DATA ;
 scalar_t__ opcode_ERROR ;
 int peer ;
 int rexmtval ;
 int sigsetjmp (int ,int) ;
 scalar_t__ sread (int ,struct tftphdr* volatile,int) ;
 int swrite (int ,int *,int) ;
 int synchnet (int ) ;
 scalar_t__ timeout ;
 int timeoutbuf ;
 int timer ;
 struct tftphdr* w_init () ;
 int write_behind (struct testcase*,int ) ;
 scalar_t__ writeit (struct testcase*,struct tftphdr* volatile*,int,int ) ;

__attribute__((used)) static void recvtftp(struct testcase *test, struct formats *pf)
{
  ssize_t n, size;

  volatile unsigned short recvblock;
  struct tftphdr * volatile rdp;
  struct tftphdr *rap;

  recvblock = 0;
  rdp = w_init();



  rap = &ackbuf.hdr;
  do {
    timeout = 0;
    rap->th_opcode = htons((unsigned short)opcode_ACK);
    rap->th_block = htons(recvblock);
    recvblock++;



send_ack:
    if(swrite(peer, &ackbuf.storage[0], 4) != 4) {
      logmsg("write: fail\n");
      goto abort;
    }
    write_behind(test, pf->f_convert);
    for(;;) {



      n = sread(peer, rdp, PKTSIZE);



      if(got_exit_signal)
        goto abort;
      if(n < 0) {
        logmsg("read: fail\n");
        goto abort;
      }
      rdp->th_opcode = ntohs((unsigned short)rdp->th_opcode);
      rdp->th_block = ntohs(rdp->th_block);
      if(rdp->th_opcode == opcode_ERROR)
        goto abort;
      if(rdp->th_opcode == opcode_DATA) {
        if(rdp->th_block == recvblock) {
          break;
        }

        (void) synchnet(peer);
        if(rdp->th_block == (recvblock-1))
          goto send_ack;
      }
    }

    size = writeit(test, &rdp, (int)(n - 4), pf->f_convert);
    if(size != (n-4)) {
      if(size < 0)
        nak(errno + 100);
      else
        nak(ENOSPACE);
      goto abort;
    }
  } while(size == SEGSIZE);
  write_behind(test, pf->f_convert);

  rap->th_opcode = htons((unsigned short)opcode_ACK);

  rap->th_block = htons(recvblock);
  (void) swrite(peer, &ackbuf.storage[0], 4);





  n = sread(peer, &buf.storage[0], sizeof(buf.storage));



  if(got_exit_signal)
    goto abort;
  if(n >= 4 &&
     rdp->th_opcode == opcode_DATA &&
     recvblock == rdp->th_block) {
    (void) swrite(peer, &ackbuf.storage[0], 4);
  }
abort:
  return;
}
