
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputc (int,int *) ;

__attribute__((used)) static void fputw(int x, FILE *fp)
{
 fputc(x & 0xff, fp);
 fputc(x >> 8, fp);
}
