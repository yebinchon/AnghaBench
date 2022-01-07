
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int label_sanitize (char*,int ,int ) ;
 int left_brackets ;
 int right_brackets ;

void label_remove_brackets(char *label)
{
   label_sanitize(label, left_brackets, right_brackets);
}
