
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 int Error (char*,char const*,int ) ;
 int _mkdir (char const*) ;
 scalar_t__ errno ;
 int mkdir (char const*,int) ;
 int strerror (scalar_t__) ;

void Q_mkdir (const char *path)
{




 if (mkdir (path, 0777) != -1)
  return;

 if (errno != EEXIST)
  Error ("mkdir %s: %s",path, strerror(errno));
}
