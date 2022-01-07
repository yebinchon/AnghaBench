
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int error_return; } ;


 int ERRORS ;
 int INTERNAL_ERROR ;
 int display_log (struct display*,int ,char*,int) ;
 int setjmp (int ) ;
 int test_one_file (struct display*,char const*) ;

__attribute__((used)) static int
do_test(struct display *dp, const char *file)

{
   int ret = setjmp(dp->error_return);

   if (ret == 0)
   {
      test_one_file(dp, file);
      return 0;
   }

   else if (ret < ERRORS)
      display_log(dp, INTERNAL_ERROR, "unexpected return code %d", ret);

   return ret;
}
