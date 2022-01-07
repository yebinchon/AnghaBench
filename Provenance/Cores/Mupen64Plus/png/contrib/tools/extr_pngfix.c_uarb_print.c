
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int udigit ;
typedef unsigned long* uarb ;
typedef int FILE ;


 int fprintf (int *,char*,unsigned long) ;
 int uarb_printx (unsigned long*,int,int *) ;

__attribute__((used)) static void
uarb_print(uarb num, int digits, FILE *out)
{
   if (digits * sizeof (udigit) > sizeof (unsigned long))
      uarb_printx(num, digits, out);

   else
   {
      unsigned long n = 0;

      while (digits > 0)
         n = (n << 16) + num[--digits];

      fprintf(out, "%lu", n);
   }
}
