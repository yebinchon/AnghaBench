#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct invocation {unsigned int argc; struct argument* argv; int /*<<< orphan*/  func; } ;
struct buffer {size_t offset; scalar_t__* data; } ;
struct TYPE_5__ {char* buff; scalar_t__ len; } ;
struct TYPE_6__ {TYPE_1__ string; } ;
struct TYPE_8__ {TYPE_2__ val; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {TYPE_4__ value; } ;
struct argument {int /*<<< orphan*/  type; TYPE_3__ a; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_VALUE ; 
 int QUERY_MAX_ARGS ; 
 int /*<<< orphan*/  RDT_STRING ; 
 scalar_t__ FUNC0 (size_t,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct argument*,struct argument*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct argument*) ; 
 struct buffer FUNC5 (struct buffer) ; 
 struct buffer FUNC6 (struct buffer,char,char const**) ; 
 int /*<<< orphan*/  query_func_all_map ; 
 struct buffer FUNC7 (struct buffer,char const**,size_t*,char const**) ; 
 struct buffer FUNC8 (struct buffer,struct argument*,char const**) ; 
 struct buffer FUNC9 (struct buffer,TYPE_4__*,char const**) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer,char*) ; 
 int /*<<< orphan*/  FUNC11 (char const**) ; 
 int /*<<< orphan*/  FUNC12 (char const**) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,size_t) ; 

__attribute__((used)) static struct buffer FUNC14(struct buffer buff,
      struct invocation *invocation, const char **error)
{
   unsigned i;
   size_t ident_len;
   struct argument args[QUERY_MAX_ARGS];
   const char *ident_name = NULL;
   unsigned argi = 0;

   buff = FUNC5(buff);
   buff = FUNC6(buff, '{', error);

   if (*error)
      goto clean;

   buff = FUNC5(buff);

   while (!FUNC10(buff, "}"))
   {
      if (argi >= QUERY_MAX_ARGS)
      {
         FUNC12(error);
         goto clean;
      }

      if (FUNC1((int)buff.data[buff.offset]))
      {
         buff = FUNC7(buff, &ident_name, &ident_len, error);

         if (!*error)
         {
            args[argi].a.value.type            = RDT_STRING;
            args[argi].a.value.val.string.len  = (uint32_t)ident_len;
            args[argi].a.value.val.string.buff = (char*)FUNC0(
                  ident_len + 1,
                  sizeof(char)
                  );

            if (!args[argi].a.value.val.string.buff)
               goto clean;

            FUNC13(
                  args[argi].a.value.val.string.buff,
                  ident_name,
                  ident_len
                  );
         }
      }
      else
         buff = FUNC9(buff, &args[argi].a.value, error);

      if (*error)
         goto clean;

      args[argi].type = AT_VALUE;
      buff            = FUNC5(buff);
      argi++;
      buff = FUNC6(buff, ':', error);

      if (*error)
         goto clean;

      buff = FUNC5(buff);

      if (argi >= QUERY_MAX_ARGS)
      {
         FUNC12(error);
         goto clean;
      }

      buff = FUNC8(buff, &args[argi], error);

      if (*error)
         goto clean;
      argi++;
      buff = FUNC5(buff);
      buff = FUNC6(buff, ',', error);

      if (*error)
      {
         *error = NULL;
         break;
      }
      buff = FUNC5(buff);
   }

   buff = FUNC6(buff, '}', error);

   if (*error)
      goto clean;

   invocation->func = query_func_all_map;
   invocation->argc = argi;
   invocation->argv = (struct argument*)
      FUNC2(sizeof(struct argument) * argi);

   if (!invocation->argv)
   {
      FUNC11(error);
      goto clean;
   }
   FUNC3(invocation->argv, args,
         sizeof(struct argument) * argi);

   goto success;
clean:
   for (i = 0; i < argi; i++)
      FUNC4(&args[i]);
success:
   return buff;
}