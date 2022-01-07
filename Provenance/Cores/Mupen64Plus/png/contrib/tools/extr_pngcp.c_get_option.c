
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int* value; scalar_t__* entry; } ;
typedef size_t png_byte ;


 size_t option_index (struct display*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
get_option(struct display *dp, const char *opt, int *value)
{
   const png_byte i = option_index(dp, opt, strlen(opt));

   if (dp->entry[i])
   {
      *value = dp->value[i];
      return 1;
   }

   else
      return 0;
}
