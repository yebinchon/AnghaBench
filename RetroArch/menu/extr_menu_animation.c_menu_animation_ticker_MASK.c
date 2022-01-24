#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t len; int type_enum; scalar_t__ str; int /*<<< orphan*/  s; int /*<<< orphan*/  idx; scalar_t__ spacer; int /*<<< orphan*/  selected; } ;
typedef  TYPE_1__ menu_animation_ctx_ticker_t ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX_LENGTH ; 
#define  TICKER_TYPE_BOUNCE 129 
#define  TICKER_TYPE_LOOP 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,size_t,size_t,size_t,size_t,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,size_t,size_t,size_t*,size_t*,size_t*,size_t*,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int ticker_is_active ; 
 scalar_t__ ticker_spacer_default ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 size_t FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,size_t) ; 

bool FUNC7(menu_animation_ctx_ticker_t *ticker)
{
   size_t str_len = FUNC5(ticker->str);

   if (!ticker->spacer)
      ticker->spacer = ticker_spacer_default;

   if ((size_t)str_len <= ticker->len)
   {
      FUNC4(ticker->s,
            PATH_MAX_LENGTH,
            ticker->str,
            ticker->len);
      return false;
   }

   if (!ticker->selected)
   {
      FUNC4(ticker->s,
            PATH_MAX_LENGTH, ticker->str, ticker->len - 3);
      FUNC3(ticker->s, "...", ticker->len);
      return false;
   }

   /* Note: If we reach this point then str_len > ticker->len
    * (previously had an unecessary 'if (str_len > ticker->len)'
    * check here...) */
   switch (ticker->type_enum)
   {
      case TICKER_TYPE_LOOP:
      {
         size_t offset1, offset2, offset3;
         size_t width1, width2, width3;
         
         FUNC2(
               ticker->idx,
               ticker->len,
               str_len, FUNC5(ticker->spacer),
               &offset1, &width1,
               &offset2, &width2,
               &offset3, &width3);
         
         FUNC0(
               ticker->str, ticker->spacer,
               offset1, width1,
               offset2, width2,
               offset3, width3,
               ticker->s, PATH_MAX_LENGTH);
         
         break;
      }
      case TICKER_TYPE_BOUNCE:
      default:
      {
         size_t offset  = 0;
         
         FUNC1(
               ticker->idx,
               ticker->len,
               &offset,
               &str_len);
         
         FUNC4(
               ticker->s,
               PATH_MAX_LENGTH,
               FUNC6(ticker->str, offset),
               str_len);
         
         break;
      }
   }

   ticker_is_active = true;

   return true;
}