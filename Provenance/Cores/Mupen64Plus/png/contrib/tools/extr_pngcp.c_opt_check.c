
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct display {scalar_t__ errset; size_t* entry; int* value; int options; } ;
typedef size_t png_byte ;
struct TYPE_4__ {int opt; TYPE_1__* values; } ;
struct TYPE_3__ {int value; } ;


 int LEVEL_MASK ;
 int LIST ;
 int OPTION ;
 int USER_ERROR ;
 int abort () ;
 int assert (int) ;
 int display_log (struct display*,int ,char*,int,char const*) ;
 int find_val (struct display*,size_t,char const*,int) ;
 size_t option_index (struct display*,char const*,int) ;
 TYPE_2__* options ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int
opt_check(struct display *dp, const char *arg)
{
   assert(dp->errset == 0);

   if (arg != ((void*)0) && arg[0] == '-' && arg[1] == '-')
   {
      int i = 0, negate = (strncmp(arg+2, "no-", 3) == 0), val;
      png_byte j;

      if (negate)
         arg += 5;

      else
         arg += 2;


      while (arg[i] != 0 && arg[i] != '=') ++i;




      j = option_index(dp, arg, i);


      if (arg[i] == 0)
      {
         val = options[j].values[negate].value;
         dp->entry[j] = (png_byte) (negate + 1U);
      }

      else
      {
         const char *list = arg + (i+1);




         if (options[j].opt != LIST)
         {

            val = find_val(dp, j, list, strlen(list));

            if (negate)
            {
               if (options[j].opt < OPTION)
                  val = !val;

               else
               {
                  display_log(dp, USER_ERROR,
                        "%.*s: option=arg cannot be negated", i, arg);
                  abort();
               }
            }
         }

         else
         {





            if (negate)
               val = options[j].values[0].value;

            else
               val = 0;

            while (*list != 0)
            {



               int v, iv;

               iv = 0;
               while (list[++iv] != 0 && list[iv] != ',') {}

               v = find_val(dp, j, list, iv);

               if (negate)
                  val &= ~v;

               else
                  val |= v;

               list += iv;
               if (*list != 0)
                  ++list;
            }
         }
      }


      dp->value[j] = val;

      if (options[j].opt < LEVEL_MASK)
      {

         if (val)
            dp->options = (dp->options & ~LEVEL_MASK) | options[j].opt;

         else
            display_log(dp, USER_ERROR,
      "%.*s: messages cannot be turned off individually; set a message level",
                  i, arg);
      }

      else if (options[j].opt < OPTION)
      {
         if (val)
            dp->options |= options[j].opt;

         else
            dp->options &= ~options[j].opt;
      }

      return 1;
   }

   else
      return 0;
}
