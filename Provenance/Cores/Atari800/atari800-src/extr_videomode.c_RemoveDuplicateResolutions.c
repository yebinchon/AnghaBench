
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CompareResolutions (int *,int *) ;
 int * resolutions ;
 unsigned int resolutions_size ;

__attribute__((used)) static void RemoveDuplicateResolutions(void)
{
 unsigned int i, j;

 for (i = 0, j = 1; j < resolutions_size; ++j) {
  if (CompareResolutions(&resolutions[i], &resolutions[j]) != 0) {
   ++i;
   if (i != j)
    resolutions[i] = resolutions[j];
  }
 }

 resolutions_size -= j - i - 1;

}
