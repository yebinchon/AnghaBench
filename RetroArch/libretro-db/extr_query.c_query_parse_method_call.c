
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct registered_func {int * func; scalar_t__ name; } ;
struct invocation {unsigned int argc; struct argument* argv; int * func; } ;
struct buffer {int offset; } ;
struct argument {int dummy; } ;


 int QUERY_MAX_ARGS ;
 scalar_t__ malloc (int) ;
 int memcpy (struct argument*,struct argument*,int) ;
 int query_argument_free (struct argument*) ;
 struct buffer query_chomp (struct buffer) ;
 struct buffer query_expect_char (struct buffer,char,char const**) ;
 struct buffer query_get_ident (struct buffer,char const**,size_t*,char const**) ;
 struct buffer query_parse_argument (struct buffer,struct argument*,char const**) ;
 int query_peek (struct buffer,char*) ;
 int query_raise_enomem (char const**) ;
 int query_raise_too_many_arguments (char const**) ;
 int query_raise_unknown_function (int ,char const*,size_t,char const**) ;
 struct registered_func* registered_functions ;
 scalar_t__ strncmp (scalar_t__,char const*,size_t) ;

__attribute__((used)) static struct buffer query_parse_method_call(struct buffer buff,
      struct invocation *invocation, const char **error)
{
   size_t func_name_len;
   unsigned i;
   struct argument args[QUERY_MAX_ARGS];
   unsigned argi = 0;
   const char *func_name = ((void*)0);
   struct registered_func *rf = registered_functions;

   invocation->func = ((void*)0);

   buff = query_get_ident(buff, &func_name, &func_name_len, error);
   if (*error)
      goto clean;

   buff = query_chomp(buff);
   buff = query_expect_char(buff, '(', error);
   if (*error)
      goto clean;

   while (rf->name)
   {
      if (strncmp(rf->name, func_name, func_name_len) == 0)
      {
         invocation->func = rf->func;
         break;
      }
      rf++;
   }

   if (!invocation->func)
   {
      query_raise_unknown_function(buff.offset, func_name,
            func_name_len, error);
      goto clean;
   }

   buff = query_chomp(buff);
   while (!query_peek(buff, ")"))
   {
      if (argi >= QUERY_MAX_ARGS)
      {
         query_raise_too_many_arguments(error);
         goto clean;
      }

      buff = query_parse_argument(buff, &args[argi], error);

      if (*error)
         goto clean;

      argi++;
      buff = query_chomp(buff);
      buff = query_expect_char(buff, ',', error);

      if (*error)
      {
         *error = ((void*)0);
         break;
      }
      buff = query_chomp(buff);
   }
   buff = query_expect_char(buff, ')', error);

   if (*error)
      goto clean;

   invocation->argc = argi;
   invocation->argv = (argi > 0) ? (struct argument*)
      malloc(sizeof(struct argument) * argi) : ((void*)0);

   if (!invocation->argv)
   {
      query_raise_enomem(error);
      goto clean;
   }
   memcpy(invocation->argv, args,
         sizeof(struct argument) * argi);

   goto success;
clean:
   for (i = 0; i < argi; i++)
      query_argument_free(&args[i]);
success:
   return buff;
}
