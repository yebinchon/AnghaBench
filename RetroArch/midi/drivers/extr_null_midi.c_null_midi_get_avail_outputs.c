
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union string_list_elem_attr {int member_0; } ;
struct string_list {int dummy; } ;


 int string_list_append (struct string_list*,char*,union string_list_elem_attr) ;

__attribute__((used)) static bool null_midi_get_avail_outputs(struct string_list *outputs)
{
   union string_list_elem_attr attr = {0};

   return string_list_append(outputs, "Null", attr);
}
