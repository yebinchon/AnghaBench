
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int message; } ;


 int HUSTR_MSGU ;
 int QUEUESIZE ;
 char* chatchars ;
 int head ;
 TYPE_1__* plr ;
 int tail ;

void HU_queueChatChar(char c)
{
    if (((head + 1) & (QUEUESIZE-1)) == tail)
    {
 plr->message = HUSTR_MSGU;
    }
    else
    {
 chatchars[head] = c;
 head = (head + 1) & (QUEUESIZE-1);
    }
}
