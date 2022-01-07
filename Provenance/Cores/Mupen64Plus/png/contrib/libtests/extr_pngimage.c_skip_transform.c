
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int options; char* filename; } ;


 int INFORMATION ;
 int LOG_SKIPPED ;
 int SKIP_BUGS ;
 int display_log (struct display*,int ,char*,char*,int) ;
 int first_transform (int) ;
 scalar_t__ is_bad_combo (int) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 char* transform_name (int) ;

__attribute__((used)) static int
skip_transform(struct display *dp, int tr)

{
   if ((dp->options & SKIP_BUGS) != 0 && is_bad_combo(tr))
   {



      if ((dp->options & LOG_SKIPPED) != 0)
      {
         printf("SKIP: %s transforms ", dp->filename);

         while (tr != 0)
         {
            int next = first_transform(tr);
            tr &= ~next;

            printf("%s", transform_name(next));
            if (tr != 0)
               putchar('+');
         }

         putchar('\n');
      }

      else
         display_log(dp, INFORMATION, "%s: skipped known bad combo 0x%x",
            dp->filename, tr);

      return 1;
   }

   return 0;
}
