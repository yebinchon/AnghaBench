
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char const*,char const*) ;

FILE *FCEUD_UTF8fopen(const char *fn, const char *mode)
{
 return(fopen(fn,mode));
}
