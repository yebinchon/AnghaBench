
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tftphdr {scalar_t__ th_opcode; unsigned short th_block; } ;
struct testcase {int writedelay; } ;
struct formats {int f_convert; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {int * storage; struct tftphdr hdr; } ;


 int SEGSIZE ;
 int SIGALRM ;
 TYPE_1__ ackbuf ;
 int alarm (int ) ;
 scalar_t__ errno ;
 scalar_t__ got_exit_signal ;
 void* htons (unsigned short volatile) ;
 int logmsg (char*,...) ;
 int mysignal (int ,int ) ;
 int nak (scalar_t__) ;
 void* ntohs (unsigned short) ;
 scalar_t__ opcode_ACK ;
 scalar_t__ opcode_DATA ;
 scalar_t__ opcode_ERROR ;
 int peer ;
 struct tftphdr* r_init () ;
 int read_ahead (struct testcase*,int ) ;
 int readit (struct testcase*,struct tftphdr**,int ) ;
 int rexmtval ;
 int sigsetjmp (int ,int) ;
 scalar_t__ sread (int ,int *,int) ;
 int swrite (int ,struct tftphdr* volatile,int) ;
 int synchnet (int ) ;
 scalar_t__ timeout ;
 int timeoutbuf ;
 int timer ;
 int wait_ms (int) ;

__attribute__((used)) static void sendtftp(struct testcase *test, struct formats *pf)
{
  int size;
  ssize_t n;

  volatile unsigned short sendblock;
  struct tftphdr * volatile sdp = r_init();
  struct tftphdr * const sap = &ackbuf.hdr;

  sendblock = 1;



  do {
    size = readit(test, (struct tftphdr **)&sdp, pf->f_convert);
    if(size < 0) {
      nak(errno + 100);
      return;
    }
    sdp->th_opcode = htons((unsigned short)opcode_DATA);
    sdp->th_block = htons(sendblock);
    timeout = 0;



    if(test->writedelay) {
      logmsg("Pausing %d seconds before %d bytes", test->writedelay,
             size);
      wait_ms(1000*test->writedelay);
    }

    send_data:
    if(swrite(peer, sdp, size + 4) != size + 4) {
      logmsg("write");
      return;
    }
    read_ahead(test, pf->f_convert);
    for(;;) {



      n = sread(peer, &ackbuf.storage[0], sizeof(ackbuf.storage));



      if(got_exit_signal)
        return;
      if(n < 0) {
        logmsg("read: fail");
        return;
      }
      sap->th_opcode = ntohs((unsigned short)sap->th_opcode);
      sap->th_block = ntohs(sap->th_block);

      if(sap->th_opcode == opcode_ERROR) {
        logmsg("got ERROR");
        return;
      }

      if(sap->th_opcode == opcode_ACK) {
        if(sap->th_block == sendblock) {
          break;
        }

        (void) synchnet(peer);
        if(sap->th_block == (sendblock-1)) {
          goto send_data;
        }
      }

    }
    sendblock++;
  } while(size == SEGSIZE);
}
