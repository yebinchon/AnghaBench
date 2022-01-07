
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int Udp; int lock; } ;
typedef TYPE_1__ SLOG ;
typedef int IP ;


 int NewLock () ;
 int NewUDPEx2 (int ,int,int *) ;
 int SetSysLog (TYPE_1__*,char*,int ) ;
 TYPE_1__* ZeroMalloc (int) ;

SLOG *NewSysLog(char *hostname, UINT port, IP *ip)
{

 SLOG *g = ZeroMalloc(sizeof(SLOG));

 g->lock = NewLock();
 g->Udp = NewUDPEx2(0, 0, ip);

 SetSysLog(g, hostname, port);

 return g;
}
