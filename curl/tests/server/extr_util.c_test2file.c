
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filename ;


 int TEST_DATA_PATH ;
 int msnprintf (char*,int,int ,int ,long) ;
 int path ;

char *test2file(long testno)
{
  static char filename[256];
  msnprintf(filename, sizeof(filename), TEST_DATA_PATH, path, testno);
  return filename;
}
