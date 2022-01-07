
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int message; } ;


 int MSGOFF ;
 int MSGON ;
 size_t consoleplayer ;
 int message_dontfuckwithme ;
 TYPE_1__* players ;
 scalar_t__ showMessages ;

void M_ChangeMessages(int choice)
{

    choice = 0;
    showMessages = 1 - showMessages;

    if (!showMessages)
 players[consoleplayer].message = MSGOFF;
    else
 players[consoleplayer].message = MSGON ;

    message_dontfuckwithme = 1;
}
