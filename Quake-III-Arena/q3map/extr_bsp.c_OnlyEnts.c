
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LoadBSPFile (char*) ;
 int LoadMapFile (int ) ;
 int SetLightStyles () ;
 int SetModelNumbers () ;
 int UnparseEntities () ;
 int WriteBSPFile (char*) ;
 int name ;
 scalar_t__ num_entities ;
 char* source ;
 int sprintf (char*,char*,char*) ;

void OnlyEnts( void ) {
 char out[1024];

 sprintf (out, "%s.bsp", source);
 LoadBSPFile (out);
 num_entities = 0;

 LoadMapFile (name);
 SetModelNumbers ();
 SetLightStyles ();

 UnparseEntities ();

 WriteBSPFile (out);
}
