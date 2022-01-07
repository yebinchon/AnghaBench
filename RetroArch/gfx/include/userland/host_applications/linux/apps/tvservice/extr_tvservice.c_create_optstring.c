
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {scalar_t__ val; scalar_t__ has_arg; int * flag; int * name; } ;


 scalar_t__ OPT_FIRST_LONG_OPT ;
 struct option* long_opts ;
 scalar_t__ no_argument ;
 scalar_t__ optional_argument ;

__attribute__((used)) static void create_optstring( char *optstring )
{
   char *short_opts = optstring;
   struct option *option;


   for ( option = long_opts; option->name != ((void*)0); option++ )
   {
      if (( option->flag == ((void*)0) ) && ( option->val < OPT_FIRST_LONG_OPT ))
      {
         *short_opts++ = (char)option->val;

         if ( option->has_arg != no_argument )
         {
            *short_opts++ = ':';
         }


         if ( option->has_arg == optional_argument )
         {
            *short_opts++ = ':';
         }
      }
   }
   *short_opts++ = '\0';
}
