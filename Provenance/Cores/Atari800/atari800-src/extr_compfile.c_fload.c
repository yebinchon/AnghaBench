
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ fread (void*,int,int,int *) ;

__attribute__((used)) static int fload(void *buf, int size, FILE *fp)
{
 return (int) fread(buf, 1, size, fp) == size;
}
