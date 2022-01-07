
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_mkdir (char*) ;

void CreatePath (char *path)
{
 char *ofs, c;

 if (path[1] == ':')
  path += 2;

 for (ofs = path+1 ; *ofs ; ofs++)
 {
  c = *ofs;
  if (c == '/' || c == '\\')
  {
   *ofs = 0;
   Q_mkdir (path);
   *ofs = c;
  }
 }
}
