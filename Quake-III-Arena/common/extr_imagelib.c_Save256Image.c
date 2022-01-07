
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int Error (char*,char const*) ;
 int ExtractFileExtension (char const*,char*) ;
 int Q_stricmp (char*,char*) ;
 int WriteLBMfile (char const*,int *,int,int,int *) ;
 int WritePCXfile (char const*,int *,int,int,int *) ;

void Save256Image (const char *name, byte *pixels, byte *palette,
       int width, int height)
{
 char ext[128];

 ExtractFileExtension (name, ext);
 if (!Q_stricmp (ext, "lbm"))
 {
  WriteLBMfile (name, pixels, width, height, palette);
 }
 else if (!Q_stricmp (ext, "pcx"))
 {
  WritePCXfile (name, pixels, width, height, palette);
 }
 else
  Error ("%s doesn't have a known image extension", name);
}
