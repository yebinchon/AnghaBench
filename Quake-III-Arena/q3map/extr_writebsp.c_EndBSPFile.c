
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EmitPlanes () ;
 int UnparseEntities () ;
 int WriteBSPFile (char*) ;
 int _printf (char*,char*) ;
 char* source ;
 int sprintf (char*,char*,char*) ;

void EndBSPFile( void ) {
 char path[1024];

 EmitPlanes ();
 UnparseEntities ();


 sprintf (path, "%s.bsp", source);
 _printf ("Writing %s\n", path);
 WriteBSPFile (path);
}
