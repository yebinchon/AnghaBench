
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int SendFifo; } ;
typedef TYPE_1__ TCPSOCK ;
typedef int SESSION ;


 int WriteFifo (int ,void*,int ) ;

void WriteSendFifo(SESSION *s, TCPSOCK *ts, void *data, UINT size)
{

 if (s == ((void*)0) || ts == ((void*)0) || data == ((void*)0))
 {
  return;
 }

 WriteFifo(ts->SendFifo, data, size);
}
