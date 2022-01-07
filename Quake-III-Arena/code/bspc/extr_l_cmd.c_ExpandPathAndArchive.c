
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ExpandPath (char*) ;
 int QCopyFile (char*,char*) ;
 scalar_t__ archive ;
 char* archivedir ;
 int sprintf (char*,char*,char*,char*) ;

char *ExpandPathAndArchive (char *path)
{
 char *expanded;
 char archivename[1024];

 expanded = ExpandPath (path);

 if (archive)
 {
  sprintf (archivename, "%s/%s", archivedir, path);
  QCopyFile (expanded, archivename);
 }
 return expanded;
}
