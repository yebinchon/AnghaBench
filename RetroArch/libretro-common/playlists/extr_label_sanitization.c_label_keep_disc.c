
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int label_sanitize (char*,int ,int ) ;
 int left_parens_or_brackets_excluding_disc ;
 int right_parens_or_brackets ;

void label_keep_disc(char *label)
{
   label_sanitize(label, left_parens_or_brackets_excluding_disc, right_parens_or_brackets);
}
