
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* BotClientCommand ) (int,int ) ;} ;


 TYPE_1__ botimport ;
 int stub1 (int,int ) ;
 int va (char*,char*) ;

void EA_DropItem(int client, char *it)
{
 botimport.BotClientCommand(client, va("drop %s", it));
}
