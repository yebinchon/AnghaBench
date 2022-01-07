
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int value_delimiter_fn(int char_to_test)
{
   switch (char_to_test)
   {
   case ' ':
   case '\t':
   case ';':
      return 1;
   default:
      return 0;
   }
}
