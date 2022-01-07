
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int label_sanitize (char*,int ,int ) ;
 int left_parens ;
 int right_parens ;

void label_remove_parens(char *label)
{
   label_sanitize(label, left_parens, right_parens);
}
