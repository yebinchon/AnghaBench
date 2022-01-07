
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int (* Print ) (int ,char*,char*,int,int) ;} ;
struct TYPE_3__ {int maxentities; } ;


 int PRT_ERROR ;
 TYPE_2__ botimport ;
 TYPE_1__ botlibglobals ;
 int qfalse ;
 int qtrue ;
 int stub1 (int ,char*,char*,int,int) ;

qboolean ValidEntityNumber(int num, char *str)
{
 if (num < 0 || num > botlibglobals.maxentities)
 {
  botimport.Print(PRT_ERROR, "%s: invalid entity number %d, [0, %d]\n",
          str, num, botlibglobals.maxentities);
  return qfalse;
 }
 return qtrue;
}
