
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int string; } ;
typedef int FILE ;


 char* FS_BuildOSPath (int ,char const*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 TYPE_1__* fs_homepath ;
 int qfalse ;
 int qtrue ;
 int strlen (char*) ;

qboolean FS_SV_FileExists( const char *file )
{
 FILE *f;
 char *testpath;

 testpath = FS_BuildOSPath( fs_homepath->string, file, "");
 testpath[strlen(testpath)-1] = '\0';

 f = fopen( testpath, "rb" );
 if (f) {
  fclose( f );
  return qtrue;
 }
 return qfalse;
}
