
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int t ;
struct TYPE_11__ {int Name; } ;
typedef TYPE_2__ UNIX_VLAN ;
struct TYPE_13__ {TYPE_1__* ClientOption; int * ClientSession; } ;
struct TYPE_12__ {int * AccountList; int UnixVLanList; } ;
struct TYPE_10__ {int DeviceName; } ;
typedef int LIST ;
typedef TYPE_3__ CLIENT ;
typedef TYPE_4__ ACCOUNT ;


 int * CloneList (int ) ;
 int Delete (int *,TYPE_2__*) ;
 void* LIST_DATA (int *,int) ;
 int LIST_NUM (int *) ;
 int ReleaseList (int *) ;
 TYPE_2__* Search (int *,TYPE_2__*) ;
 int StrCpy (int ,int,int ) ;
 int UnixVLanSetState (int ,int) ;
 int Zero (TYPE_2__*,int) ;

bool CtVLansDown(CLIENT *c)
{

 return 1;
}
