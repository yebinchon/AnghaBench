
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; int ** replace; } ;
typedef TYPE_1__ replace_struct ;


 size_t MAX_REPLACE_LENGTH ;
 int error_exit (char*) ;
 int strcpy (int ,char const*) ;

void add_replace_string(replace_struct* replace, const char* search_str, const char* replace_str)
{
 if(replace->length >= MAX_REPLACE_LENGTH)
  error_exit("overflow in replace structure");

 strcpy(replace->replace[replace->length][0], search_str);
 strcpy(replace->replace[replace->length++][1], replace_str);
}
