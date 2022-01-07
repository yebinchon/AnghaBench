
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FilenamesCmp (char const*,char const*) ;

__attribute__((used)) static void FilenamesSort(const char **start, const char **end)
{
 while (start + 1 < end) {
  const char **left = start + 1;
  const char **right = end;
  const char *pivot = *start;
  const char *tmp;
  while (left < right) {
   if (FilenamesCmp(*left, pivot) <= 0)
    left++;
   else {
    right--;
    tmp = *left;
    *left = *right;
    *right = tmp;
   }
  }
  left--;
  tmp = *left;
  *left = *start;
  *start = tmp;
  FilenamesSort(start, left);
  start = right;
 }
}
