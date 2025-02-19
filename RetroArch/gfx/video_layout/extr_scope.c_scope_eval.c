
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* eval; } ;
typedef TYPE_1__ scope_t ;
struct TYPE_7__ {char const* value; } ;
typedef TYPE_2__ param_t ;


 int SCOPE_BUFFER_SIZE ;
 TYPE_2__* param_find (TYPE_1__*,char*,int ) ;
 int strcat (char*,char const*) ;
 char* strchr (char const*,char) ;
 int strncat (char*,char const*,size_t) ;
 int strncpy (char*,char const*,size_t) ;

const char *scope_eval(scope_t *scope, const char *src)
{
   const char* next;
   bool in_var;
   char tmp[SCOPE_BUFFER_SIZE];

   if (!src)
      return ((void*)0);

   scope->eval[0] = '\0';
   next = src;

   while (next[0] != '\0')
   {
      const char* cur;
      cur = next;

      if ((in_var = (next[0] == '~')))
         ++cur;

      next = strchr(cur, '~');

      if (next && next != cur)
      {
         size_t len;
         len = next - cur;

         if (in_var)
         {
            param_t *param;

            strncpy(tmp, cur, len);
            tmp[len] = '\0';

            if ((param = param_find(scope, tmp, 0)))
               strcat(scope->eval, param->value);
            else
               strcat(scope->eval, tmp);

            ++next;
         }
         else
         {
            strncat(scope->eval, cur, len);
         }
      }
      else
      {
         if (in_var)
            --cur;
         strcat(scope->eval, cur);
         break;
      }
   }

   return scope->eval;
}
