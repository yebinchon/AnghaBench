
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* killerName; } ;


 TYPE_1__ cg ;
 char* va (char*,scalar_t__*) ;

const char *CG_GetKillerText() {
 const char *s = "";
 if ( cg.killerName[0] ) {
  s = va("Fragged by %s", cg.killerName );
 }
 return s;
}
