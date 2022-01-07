
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int type_enum; scalar_t__ str; int s; int idx; scalar_t__ spacer; int selected; } ;
typedef TYPE_1__ menu_animation_ctx_ticker_t ;


 int PATH_MAX_LENGTH ;


 int build_ticker_loop_string (scalar_t__,scalar_t__,size_t,size_t,size_t,size_t,size_t,size_t,int ,int ) ;
 int menu_animation_ticker_generic (int ,int,size_t*,size_t*) ;
 int menu_animation_ticker_loop (int ,int,size_t,size_t,size_t*,size_t*,size_t*,size_t*,size_t*,size_t*) ;
 int strlcat (int ,char*,int) ;
 int ticker_is_active ;
 scalar_t__ ticker_spacer_default ;
 int utf8cpy (int ,int ,scalar_t__,size_t) ;
 size_t utf8len (scalar_t__) ;
 scalar_t__ utf8skip (scalar_t__,size_t) ;

bool menu_animation_ticker(menu_animation_ctx_ticker_t *ticker)
{
   size_t str_len = utf8len(ticker->str);

   if (!ticker->spacer)
      ticker->spacer = ticker_spacer_default;

   if ((size_t)str_len <= ticker->len)
   {
      utf8cpy(ticker->s,
            PATH_MAX_LENGTH,
            ticker->str,
            ticker->len);
      return 0;
   }

   if (!ticker->selected)
   {
      utf8cpy(ticker->s,
            PATH_MAX_LENGTH, ticker->str, ticker->len - 3);
      strlcat(ticker->s, "...", ticker->len);
      return 0;
   }




   switch (ticker->type_enum)
   {
      case 128:
      {
         size_t offset1, offset2, offset3;
         size_t width1, width2, width3;

         menu_animation_ticker_loop(
               ticker->idx,
               ticker->len,
               str_len, utf8len(ticker->spacer),
               &offset1, &width1,
               &offset2, &width2,
               &offset3, &width3);

         build_ticker_loop_string(
               ticker->str, ticker->spacer,
               offset1, width1,
               offset2, width2,
               offset3, width3,
               ticker->s, PATH_MAX_LENGTH);

         break;
      }
      case 129:
      default:
      {
         size_t offset = 0;

         menu_animation_ticker_generic(
               ticker->idx,
               ticker->len,
               &offset,
               &str_len);

         utf8cpy(
               ticker->s,
               PATH_MAX_LENGTH,
               utf8skip(ticker->str, offset),
               str_len);

         break;
      }
   }

   ticker_is_active = 1;

   return 1;
}
