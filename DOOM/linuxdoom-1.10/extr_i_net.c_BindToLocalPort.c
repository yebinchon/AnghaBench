
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
typedef int address ;


 int AF_INET ;
 int INADDR_ANY ;
 int I_Error (char*,int ) ;
 int bind (int,void*,int) ;
 int errno ;
 int memset (struct sockaddr_in*,int ,int) ;
 int strerror (int ) ;

void
BindToLocalPort
( int s,
  int port )
{
    int v;
    struct sockaddr_in address;

    memset (&address, 0, sizeof(address));
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = port;

    v = bind (s, (void *)&address, sizeof(address));
    if (v == -1)
 I_Error ("BindToPort: bind: %s", strerror(errno));
}
