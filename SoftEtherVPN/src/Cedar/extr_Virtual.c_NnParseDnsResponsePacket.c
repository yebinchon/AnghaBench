
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int h ;
typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_14__ {int Size; int Buf; } ;
struct TYPE_13__ {int AnswerRRs; int NumQuery; } ;
struct TYPE_12__ {int addr; } ;
typedef TYPE_1__ IP ;
typedef TYPE_2__ DNSV4_HEADER ;
typedef TYPE_3__ BUF ;


 int Copy (int ,int ,int) ;
 scalar_t__ Endian16 (int ) ;
 int FreeBuf (TYPE_3__*) ;
 TYPE_3__* NewBufFromMemory (int *,scalar_t__) ;
 TYPE_3__* NnReadDnsRecord (TYPE_3__*,int,int*,int*) ;
 int ReadBuf (TYPE_3__*,TYPE_2__*,int) ;
 int Zero (TYPE_1__*,int) ;

bool NnParseDnsResponsePacket(UCHAR *data, UINT size, IP *ret_ip)
{
 BUF *buf = NewBufFromMemory(data, size);
 bool ret = 0;
 DNSV4_HEADER h;

 if (ReadBuf(buf, &h, sizeof(h)) == sizeof(h))
 {
  UINT num_questions = Endian16(h.NumQuery);
  UINT num_answers = Endian16(h.AnswerRRs);
  UINT i;

  for (i = 0;i < num_questions;i++)
  {
   BUF *r = NnReadDnsRecord(buf, 0, ((void*)0), ((void*)0));

   if (r != ((void*)0))
   {
    FreeBuf(r);
   }
   else
   {
    goto LABEL_CLEANUP;
   }
  }

  for (i = 0;i < num_answers;i++)
  {
   USHORT tp, cl;
   BUF *r = NnReadDnsRecord(buf, 1, &tp, &cl);

   if (r != ((void*)0))
   {
    if (tp == 0x0001 && cl == 0x0001 && r->Size == 4)
    {
     ret = 1;

     if (ret_ip != ((void*)0))
     {
      Zero(ret_ip, sizeof(IP));

      Copy(ret_ip->addr, r->Buf, 4);
     }
    }

    FreeBuf(r);
   }
   else
   {
    goto LABEL_CLEANUP;
   }
  }
 }

LABEL_CLEANUP:
 FreeBuf(buf);

 return ret;
}
