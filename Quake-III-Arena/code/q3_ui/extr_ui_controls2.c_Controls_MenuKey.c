
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sfxHandle_t ;
typedef void* qboolean ;
struct TYPE_6__ {int id; } ;
typedef TYPE_1__ menucommon_s ;
struct TYPE_7__ {int bind2; int bind1; int id; int label; } ;
typedef TYPE_2__ bind_t ;
struct TYPE_9__ {size_t cursor; scalar_t__* items; } ;
struct TYPE_8__ {TYPE_5__ menu; void* waitingforkey; void* changesmade; } ;


 int Controls_SetConfig () ;
 int Controls_Update () ;

 int K_CHAR_FLAG ;




 int Menu_DefaultKey (TYPE_5__*,int) ;
 TYPE_2__* g_bindings ;
 int menu_out_sound ;
 void* qfalse ;
 void* qtrue ;
 TYPE_3__ s_controls ;
 int trap_Key_SetBinding (int,char*) ;

__attribute__((used)) static sfxHandle_t Controls_MenuKey( int key )
{
 int id;
 int i;
 qboolean found;
 bind_t* bindptr;
 found = qfalse;

 if (!s_controls.waitingforkey)
 {
  switch (key)
  {
   case 132:
   case 131:
   case 129:
    key = -1;
    break;

   case 128:
   case 130:
    if (s_controls.changesmade)
     Controls_SetConfig();
    goto ignorekey;

   default:
    goto ignorekey;
  }
 }
 else
 {
  if (key & K_CHAR_FLAG)
   goto ignorekey;

  switch (key)
  {
   case 130:
    s_controls.waitingforkey = qfalse;
    Controls_Update();
    return (menu_out_sound);

   case '`':
    goto ignorekey;
  }
 }

 s_controls.changesmade = qtrue;

 if (key != -1)
 {

  bindptr = g_bindings;
  for (i=0; ;i++,bindptr++)
  {
   if (!bindptr->label)
    break;

   if (bindptr->bind2 == key)
    bindptr->bind2 = -1;

   if (bindptr->bind1 == key)
   {
    bindptr->bind1 = bindptr->bind2;
    bindptr->bind2 = -1;
   }
  }
 }


 id = ((menucommon_s*)(s_controls.menu.items[s_controls.menu.cursor]))->id;
 bindptr = g_bindings;
 for (i=0; ;i++,bindptr++)
 {
  if (!bindptr->label)
   break;

  if (bindptr->id == id)
  {
   found = qtrue;
   if (key == -1)
   {
    if( bindptr->bind1 != -1 ) {
     trap_Key_SetBinding( bindptr->bind1, "" );
     bindptr->bind1 = -1;
    }
    if( bindptr->bind2 != -1 ) {
     trap_Key_SetBinding( bindptr->bind2, "" );
     bindptr->bind2 = -1;
    }
   }
   else if (bindptr->bind1 == -1) {
    bindptr->bind1 = key;
   }
   else if (bindptr->bind1 != key && bindptr->bind2 == -1) {
    bindptr->bind2 = key;
   }
   else
   {
    trap_Key_SetBinding( bindptr->bind1, "" );
    trap_Key_SetBinding( bindptr->bind2, "" );
    bindptr->bind1 = key;
    bindptr->bind2 = -1;
   }
   break;
  }
 }

 s_controls.waitingforkey = qfalse;

 if (found)
 {
  Controls_Update();
  return (menu_out_sound);
 }

ignorekey:
 return Menu_DefaultKey( &s_controls.menu, key );
}
