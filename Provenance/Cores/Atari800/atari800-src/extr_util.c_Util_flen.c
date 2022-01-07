
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int fseek (int *,int ,int ) ;
 scalar_t__ ftell (int *) ;

int Util_flen(FILE *fp)
{
 fseek(fp, 0, SEEK_END);
 return (int) ftell(fp);
}
