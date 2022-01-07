
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_3__ {scalar_t__ status; scalar_t__ maxlen; scalar_t__ len; int data; scalar_t__ channel; } ;
typedef TYPE_1__ UDPpacket ;


 int MakeUDP (int ,int) ;
 int SDLNet_UDP_Send (int ,int ,TYPE_1__*) ;
 scalar_t__ UDPHEADSIZE ;
 int UDPSocket ;
 int data ;
 int outcounter ;

int FCEUD_SendDataToServer(uint8 v,uint8 cmd)
{
        UDPpacket upack;

        upack.channel=0;
        upack.data=MakeUDP(data,1);
        upack.len=upack.maxlen=UDPHEADSIZE+1;
        upack.status=0;

        SDLNet_UDP_Send(UDPSocket,0,&upack);

        outcounter++;
        return(1);
}
