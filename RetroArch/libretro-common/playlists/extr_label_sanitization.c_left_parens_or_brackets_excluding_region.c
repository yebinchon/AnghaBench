
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int left_exclusion (char*,int ,int ) ;
 scalar_t__ left_parens_or_brackets (char*) ;
 int region_strings ;
 int region_strings_length ;

__attribute__((used)) static bool left_parens_or_brackets_excluding_region(char *left)
{
   return left_parens_or_brackets(left)
      && !left_exclusion(left, region_strings, region_strings_length);
}
