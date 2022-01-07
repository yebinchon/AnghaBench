
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int name ;
struct TYPE_3__ {int classname; } ;
typedef TYPE_1__ gitem_t ;


 int Com_sprintf (char*,int,char*,int ) ;
 int trap_Cvar_VariableIntegerValue (char*) ;

int G_ItemDisabled( gitem_t *item ) {

 char name[128];

 Com_sprintf(name, sizeof(name), "disable_%s", item->classname);
 return trap_Cvar_VariableIntegerValue( name );
}
