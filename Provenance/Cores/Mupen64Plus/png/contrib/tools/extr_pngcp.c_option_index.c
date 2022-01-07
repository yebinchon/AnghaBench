
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct display {scalar_t__ errset; } ;
typedef size_t png_byte ;
struct TYPE_2__ {scalar_t__* name; } ;


 int INTERNAL_ERROR ;
 int USER_ERROR ;
 int abort () ;
 int display_log (struct display*,int ,char*,int,char const*) ;
 size_t option_count ;
 TYPE_1__* options ;
 scalar_t__ strncmp (scalar_t__*,char const*,size_t) ;

__attribute__((used)) static png_byte
option_index(struct display *dp, const char *opt, size_t len)




{
   png_byte j;

   for (j=0; j<option_count; ++j)
      if (strncmp(options[j].name, opt, len) == 0 && options[j].name[len] == 0)
         return j;




   display_log(dp, dp->errset ? INTERNAL_ERROR : USER_ERROR,
         "%.*s: unknown option", (int) len, opt);
   abort();
}
