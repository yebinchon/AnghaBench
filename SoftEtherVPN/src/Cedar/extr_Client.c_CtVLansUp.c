
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Name; } ;
typedef TYPE_1__ UNIX_VLAN ;
struct TYPE_6__ {int UnixVLanList; } ;
typedef TYPE_2__ CLIENT ;


 TYPE_1__* LIST_DATA (int ,int) ;
 int LIST_NUM (int ) ;
 int UnixVLanSetState (int ,int) ;

bool CtVLansUp(CLIENT *c)
{

 return 1;
}
