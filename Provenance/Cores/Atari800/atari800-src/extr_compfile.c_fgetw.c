
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int fgetc (int *) ;

__attribute__((used)) static int fgetw(FILE *fp)
{
 int low;
 int high;
 low = fgetc(fp);
 if (low == EOF)
  return -1;
 high = fgetc(fp);
 if (high == EOF)
  return -1;
 return low + (high << 8);
}
