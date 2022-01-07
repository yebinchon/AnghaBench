
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool left_parens_or_brackets(char *left)
{
   return left[0] == '(' || left[0] == '[';
}
