
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errors ;
 int longjmp (int ,int) ;
 int regerror9 (char*) ;
 int regkaboom ;

__attribute__((used)) static void
rcerror(char *s)
{
 errors++;
 regerror9(s);
 longjmp(regkaboom, 1);
}
