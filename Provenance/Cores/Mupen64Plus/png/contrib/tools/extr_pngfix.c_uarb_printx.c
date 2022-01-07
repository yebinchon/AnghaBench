
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* uarb ;
typedef int FILE ;


 int fprintf (int *,char*,scalar_t__) ;
 int fputs (char*,int *) ;

__attribute__((used)) static void
uarb_printx(uarb num, int digits, FILE *out)

{
   while (digits > 0)
      if (num[--digits] > 0)
      {
         fprintf(out, "0x%x", num[digits]);

         while (digits > 0)
            fprintf(out, "%.4x", num[--digits]);
      }

      else if (digits == 0)
         fputs("0x0", out);
}
