
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int headnode; } ;
typedef TYPE_1__ tree_t ;


 int Log_Print (char*,...) ;
 int Log_Write (char*,scalar_t__) ;
 int MakeHeadnodePortals (TYPE_1__*) ;
 int MakeTreePortals_r (int ) ;
 int WindingMemory () ;
 scalar_t__ c_numportalizednodes ;
 int c_portalmemory ;
 int c_tinyportals ;
 int qprintf (char*,...) ;

void MakeTreePortals(tree_t *tree)
{
 MakeHeadnodePortals(tree);
 MakeTreePortals_r(tree->headnode);
}
