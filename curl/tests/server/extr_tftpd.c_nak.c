
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tftphdr {int th_msg; void* th_code; void* th_opcode; } ;
struct errmsg {int e_code; int e_msg; } ;
struct TYPE_2__ {int * storage; struct tftphdr hdr; } ;


 void* EUNDEF ;
 TYPE_1__ buf ;
 struct errmsg* errmsgs ;
 void* htons (unsigned short) ;
 int logmsg (char*) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ opcode_ERROR ;
 int peer ;
 int strerror (int) ;
 scalar_t__ strlen (int ) ;
 int swrite (int ,int *,int) ;

__attribute__((used)) static void nak(int error)
{
  struct tftphdr *tp;
  int length;
  struct errmsg *pe;

  tp = &buf.hdr;
  tp->th_opcode = htons((unsigned short)opcode_ERROR);
  tp->th_code = htons((unsigned short)error);
  for(pe = errmsgs; pe->e_code >= 0; pe++)
    if(pe->e_code == error)
      break;
  if(pe->e_code < 0) {
    pe->e_msg = strerror(error - 100);
    tp->th_code = EUNDEF;
  }
  length = (int)strlen(pe->e_msg);



  memcpy(tp->th_msg, pe->e_msg, length + 1);
  length += 5;
  if(swrite(peer, &buf.storage[0], length) != length)
    logmsg("nak: fail\n");
}
