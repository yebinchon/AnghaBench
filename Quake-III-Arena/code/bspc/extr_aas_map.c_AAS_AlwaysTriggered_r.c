
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPAWNFLAG_NOT_DEATHMATCH ;
 char* ValueForKey (int *,char*) ;
 int Warning (char*,int,char*,char*) ;
 int atoi (char*) ;
 int * entities ;
 int* mark_entities ;
 int num_entities ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;

int AAS_AlwaysTriggered_r(char *targetname)
{
 int i;

 if (!strlen(targetname)) {
  return 0;
 }

 for (i = 0; i < num_entities; i++) {

  if ( !strcmp(targetname, ValueForKey(&entities[i], "target")) ) {

   if (!(atoi(ValueForKey(&entities[i], "spawnflags")) & SPAWNFLAG_NOT_DEATHMATCH)) {

    if (!strcmp("trigger_always", ValueForKey(&entities[i], "classname"))) {
     return 1;
    }

    if ( mark_entities[i] ) {
     Warning( "entity %d, classname %s has recursive targetname %s\n", i,
          ValueForKey(&entities[i], "classname"), targetname );
     return 0;
    }
    mark_entities[i] = 1;
    if ( AAS_AlwaysTriggered_r(ValueForKey(&entities[i], "targetname")) ) {
     return 1;
    }
   }
  }
 }
 return 0;
}
