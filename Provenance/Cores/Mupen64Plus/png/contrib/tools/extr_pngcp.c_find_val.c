
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct display {size_t* entry; scalar_t__ errset; } ;
typedef size_t png_byte ;
struct TYPE_4__ {size_t value_count; int name; TYPE_1__* values; } ;
struct TYPE_3__ {scalar_t__* name; int value; } ;


 int INTERNAL_ERROR ;
 int INT_MAX ;
 int INT_MIN ;
 int USER_ERROR ;
 int abort () ;
 int display_log (struct display*,int ,char*,int ,int,char const*) ;
 TYPE_2__* options ;
 scalar_t__* range_hi ;
 scalar_t__* range_lo ;
 scalar_t__ strncmp (scalar_t__*,char const*,size_t) ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static int
find_val(struct display *dp, png_byte opt, const char *str, size_t len)




{
   int rlo = INT_MAX, rhi = INT_MIN;
   png_byte j, irange = 0;

   for (j=1U; j<=options[opt].value_count; ++j)
   {
      if (strncmp(options[opt].values[j-1U].name, str, len) == 0 &&
          options[opt].values[j-1U].name[len] == 0)
      {
         dp->entry[opt] = j;
         return options[opt].values[j-1U].value;
      }
      else if (options[opt].values[j-1U].name == range_lo)
         rlo = options[opt].values[j-1U].value, irange = j;
      else if (options[opt].values[j-1U].name == range_hi)
         rhi = options[opt].values[j-1U].value;
   }


   if (irange > 0)
   {
      char *ep = ((void*)0);
      long l = strtol(str, &ep, 0);

      if (ep == str+len && l >= rlo && l <= rhi)
      {
         dp->entry[opt] = irange;
         return (int) l;
      }
   }

   display_log(dp, dp->errset ? INTERNAL_ERROR : USER_ERROR,
         "%s: unknown value setting '%.*s'", options[opt].name,
         (int) len, str);
   abort();
}
