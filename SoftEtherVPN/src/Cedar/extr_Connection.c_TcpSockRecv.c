
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int UseEncrypt; } ;
struct TYPE_5__ {int Sock; } ;
typedef TYPE_1__ TCPSOCK ;
typedef TYPE_2__ SESSION ;


 int Recv (int ,void*,int ,int ) ;

UINT TcpSockRecv(SESSION *s, TCPSOCK *ts, void *data, UINT size)
{

 return Recv(ts->Sock, data, size, s->UseEncrypt);
}
