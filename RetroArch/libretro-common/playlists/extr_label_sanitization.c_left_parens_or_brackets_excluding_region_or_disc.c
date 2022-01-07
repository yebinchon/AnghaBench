
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disc_strings ;
 int disc_strings_length ;
 int left_exclusion (char*,int ,int ) ;
 scalar_t__ left_parens_or_brackets (char*) ;
 int region_strings ;
 int region_strings_length ;

__attribute__((used)) static bool left_parens_or_brackets_excluding_region_or_disc(char *left)
{
   return left_parens_or_brackets(left)
      && !left_exclusion(left, region_strings, region_strings_length)
      && !left_exclusion(left, disc_strings, disc_strings_length);
}
