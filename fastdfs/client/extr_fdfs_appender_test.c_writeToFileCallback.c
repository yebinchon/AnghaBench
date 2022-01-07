
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int FILE ;


 int EINVAL ;
 int EIO ;
 scalar_t__ errno ;
 int fwrite (char const*,int const,int,int *) ;

int writeToFileCallback(void *arg, const int64_t file_size, const char *data, const int current_size)

{
 if (arg == ((void*)0))
 {
  return EINVAL;
 }

 if (fwrite(data, current_size, 1, (FILE *)arg) != 1)
 {
  return errno != 0 ? errno : EIO;
 }

 return 0;
}
