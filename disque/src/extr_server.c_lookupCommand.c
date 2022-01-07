
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serverCommand {int dummy; } ;
typedef int sds ;
struct TYPE_2__ {int commands; } ;


 struct serverCommand* dictFetchValue (int ,int ) ;
 TYPE_1__ server ;

struct serverCommand *lookupCommand(sds name) {
    return dictFetchValue(server.commands, name);
}
