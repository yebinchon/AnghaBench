
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef int display ;
struct TYPE_2__ {scalar_t__ keep; } ;
typedef int FILE ;


 scalar_t__ PNG_HANDLE_CHUNK_AS_DEFAULT ;
 int PNG_INFO_IDAT ;
 int check (int *,int,char const**,int*,int *,int) ;
 int check_error (int *,int,char*) ;
 int check_handling (int *,int,int,int,int,char*,int) ;
 TYPE_1__* chunk_info ;
 int clear_keep () ;
 int memcpy (int*,int*,int) ;
 int rewind (int *) ;

__attribute__((used)) static void
perform_one_test(FILE *fp, int argc, const char **argv,
   png_uint_32 *default_flags, display *d, int set_callback)
{
   int def;
   png_uint_32 flags[2][4];

   rewind(fp);
   clear_keep();
   memcpy(flags[0], default_flags, sizeof flags[0]);

   def = check(fp, argc, argv, flags[1], d, set_callback);
   if (chunk_info[0 ].keep != PNG_HANDLE_CHUNK_AS_DEFAULT &&
       (flags[1][3] & PNG_INFO_IDAT) != 0)
      flags[0][2] |= PNG_INFO_IDAT;






   check_error(d, (flags[0][0]|flags[0][2]) & (flags[0][1]|flags[0][3]),
      "chunk handled inconsistently in count tests");
   check_error(d, (flags[1][0]|flags[1][2]) & (flags[1][1]|flags[1][3]),
      "chunk handled inconsistently in option tests");






   {
      png_uint_32 test;

      test = flags[1][0] & ~flags[0][0];
      check_error(d, test, "new known chunk before IDAT");
      test = flags[1][1] & ~(flags[0][0] | flags[0][1]);
      check_error(d, test, "new unknown chunk before IDAT");
      test = flags[1][2] & ~flags[0][2];
      check_error(d, test, "new known chunk after IDAT");
      test = flags[1][3] & ~(flags[0][2] | flags[0][3]);
      check_error(d, test, "new unknown chunk after IDAT");
   }





   check_handling(d, def, flags[0][0] | flags[0][1], flags[1][0], flags[1][1],
      "before IDAT", set_callback);
   check_handling(d, def, flags[0][2] | flags[0][3], flags[1][2], flags[1][3],
      "after IDAT", set_callback);
}
