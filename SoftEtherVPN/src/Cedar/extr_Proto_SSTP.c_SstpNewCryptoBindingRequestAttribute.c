
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UCHAR ;
struct TYPE_5__ {int Size; int Buf; } ;
typedef int SSTP_ATTRIBUTE ;
typedef TYPE_1__ BUF ;


 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* NewBuf () ;
 int SSTP_ATTRIB_CRYPTO_BINDING_REQ ;
 int SSTP_NONCE_SIZE ;
 int * SstpNewAttribute (int ,int ,int ) ;
 int WriteBuf (TYPE_1__*,scalar_t__*,int) ;

SSTP_ATTRIBUTE *SstpNewCryptoBindingRequestAttribute(UCHAR hash_protocol_bitmask, UCHAR *nonce_32bytes)
{
 SSTP_ATTRIBUTE *a;
 UCHAR uc;
 BUF *b = NewBuf();

 uc = 0;
 WriteBuf(b, &uc, 1);
 WriteBuf(b, &uc, 1);
 WriteBuf(b, &uc, 1);
 WriteBuf(b, &hash_protocol_bitmask, 1);

 WriteBuf(b, nonce_32bytes, SSTP_NONCE_SIZE);

 a = SstpNewAttribute(SSTP_ATTRIB_CRYPTO_BINDING_REQ, b->Buf, b->Size);

 FreeBuf(b);

 return a;
}
