
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ StartWith (char*,char*) ;

bool ViIsInternetFile(char *path)
{

 if (path == ((void*)0))
 {
  return 0;
 }

 if (StartWith(path, "http://") || StartWith(path, "https://") || StartWith(path, "ftp://"))
 {
  return 1;
 }

 return 0;
}
