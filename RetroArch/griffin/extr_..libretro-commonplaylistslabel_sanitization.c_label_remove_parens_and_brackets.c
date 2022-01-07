
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int label_sanitize (char*,int ,int ) ;
 int left_parens_or_brackets ;
 int right_parens_or_brackets ;

void label_remove_parens_and_brackets(char *label)
{
   label_sanitize(label, left_parens_or_brackets, right_parens_or_brackets);
}
