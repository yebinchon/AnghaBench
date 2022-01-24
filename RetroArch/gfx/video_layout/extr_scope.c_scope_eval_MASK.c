#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* eval; } ;
typedef  TYPE_1__ scope_t ;
struct TYPE_7__ {char const* value; } ;
typedef  TYPE_2__ param_t ;

/* Variables and functions */
 int SCOPE_BUFFER_SIZE ; 
 TYPE_2__* FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 

const char *FUNC5(scope_t *scope, const char *src)
{
   const char* next;
   bool in_var;
   char tmp[SCOPE_BUFFER_SIZE];

   if (!src)
      return NULL;

   scope->eval[0] = '\0';
   next = src;

   while (next[0] != '\0')
   {
      const char* cur;
      cur = next;

      if ((in_var = (next[0] == '~')))
         ++cur;

      next = FUNC2(cur, '~');

      if (next && next != cur)
      {
         size_t len;
         len = next - cur;

         if (in_var)
         {
            param_t *param;

            FUNC4(tmp, cur, len);
            tmp[len] = '\0';

            if ((param = FUNC0(scope, tmp, 0)))
               FUNC1(scope->eval, param->value);
            else
               FUNC1(scope->eval, tmp);

            ++next;
         }
         else
         {
            FUNC3(scope->eval, cur, len);
         }
      }
      else
      {
         if (in_var)
            --cur;
         FUNC1(scope->eval, cur);
         break;
      }
   }

   return scope->eval;
}