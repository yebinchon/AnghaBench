
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_UDP ;
 int I_Error (char*,int ) ;
 int PF_INET ;
 int SOCK_DGRAM ;
 int errno ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;

int UDPsocket (void)
{
    int s;


    s = socket (PF_INET, SOCK_DGRAM, IPPROTO_UDP);
    if (s<0)
 I_Error ("can't create socket: %s",strerror(errno));

    return s;
}
