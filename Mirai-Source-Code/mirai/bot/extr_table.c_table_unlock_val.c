
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct table_value {int locked; } ;


 int printf (char*,size_t) ;
 struct table_value* table ;
 int toggle_obf (size_t) ;

void table_unlock_val(uint8_t id)
{
    struct table_value *val = &table[id];
    toggle_obf(id);
}
