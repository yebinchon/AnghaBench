
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ commandType; } ;
typedef TYPE_1__ Query ;


 scalar_t__ CMD_DELETE ;
 scalar_t__ CMD_UPDATE ;

bool
IsUpdateOrDelete(Query *query)
{
 return query->commandType == CMD_UPDATE ||
     query->commandType == CMD_DELETE;
}
