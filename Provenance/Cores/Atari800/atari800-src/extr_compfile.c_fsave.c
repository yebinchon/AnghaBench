
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ fwrite (void*,int,int,int *) ;

__attribute__((used)) static int fsave(void *buf, int size, FILE *fp)
{
 return (int) fwrite(buf, 1, size, fp) == size;
}
