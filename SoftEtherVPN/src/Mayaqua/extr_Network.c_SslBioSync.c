
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tmp ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_7__ {int size; } ;
struct TYPE_6__ {int IsDisconnected; int RecvFifo; int bio; TYPE_3__* SendFifo; } ;
typedef TYPE_1__ SSL_BIO ;


 int BIO_read (int ,int *,int) ;
 scalar_t__ BIO_should_retry (int ) ;
 int BIO_write (int ,int ,int ) ;
 int Debug (char*,int ) ;
 int ERR_error_string (int ,int *) ;
 int ERR_peek_last_error () ;
 int FifoSize (TYPE_3__*) ;
 int GetFifoPointer (TYPE_3__*) ;
 int ReadFifo (TYPE_3__*,int *,int ) ;
 int WHERE ;
 int WriteFifo (int ,int *,int ) ;

bool SslBioSync(SSL_BIO *b, bool sync_send, bool sync_recv)
{

 if (b == ((void*)0))
 {
  return 0;
 }

 if (b->IsDisconnected)
 {
  return 0;
 }


 if (sync_send)
 {
  while (b->SendFifo->size >= 1)
  {
   int r = BIO_write(b->bio, GetFifoPointer(b->SendFifo), FifoSize(b->SendFifo));

   if (r == 0)
   {
    b->IsDisconnected = 1;
    WHERE;
    return 0;
   }
   else
   {
    if (r < 0)
    {
     if (BIO_should_retry(b->bio))
     {
      break;
     }
     else
     {
      b->IsDisconnected = 1;
      WHERE;
      return 0;
     }
    }
    else
    {
     ReadFifo(b->SendFifo, ((void*)0), (UINT)r);
    }
   }
  }
 }


 if (sync_recv)
 {
  while (1)
  {
   UCHAR tmp[4096];
   int r;

   r = BIO_read(b->bio, tmp, sizeof(tmp));

   if (r == 0)
   {
    b->IsDisconnected = 1;
    WHERE;
    return 0;
   }
   else
   {
    if (r < 0)
    {
     if (BIO_should_retry(b->bio))
     {
      break;
     }
     else
     {
      b->IsDisconnected = 1;
      WHERE;
      Debug("OpenSSL Error: %s\n", ERR_error_string(ERR_peek_last_error(), ((void*)0)));
      return 0;
     }
    }
    else
    {
     WriteFifo(b->RecvFifo, tmp, (UINT)r);
    }
   }
  }
 }

 return 1;
}
