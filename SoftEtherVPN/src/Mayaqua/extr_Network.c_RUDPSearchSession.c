
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_8__ {void* YourPort; int YourIp; void* MyPort; int MyIp; } ;
struct TYPE_7__ {int SessionList; } ;
typedef TYPE_1__ RUDP_STACK ;
typedef TYPE_2__ RUDP_SESSION ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 TYPE_2__* Search (int ,TYPE_2__*) ;

RUDP_SESSION *RUDPSearchSession(RUDP_STACK *r, IP *my_ip, UINT my_port, IP *your_ip, UINT your_port)
{
 RUDP_SESSION t;
 RUDP_SESSION *se;

 if (r == ((void*)0) || my_ip == ((void*)0) || your_ip == ((void*)0))
 {
  return ((void*)0);
 }

 Copy(&t.MyIp, my_ip, sizeof(IP));
 t.MyPort = my_port;
 Copy(&t.YourIp, your_ip, sizeof(IP));
 t.YourPort = your_port;

 se = Search(r->SessionList, &t);

 return se;
}
