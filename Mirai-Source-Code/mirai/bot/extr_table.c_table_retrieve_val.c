
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_value {char* val; scalar_t__ val_len; scalar_t__ locked; } ;


 int printf (char*,int) ;
 struct table_value* table ;

char *table_retrieve_val(int id, int *len)
{
    struct table_value *val = &table[id];
    if (len != ((void*)0))
        *len = (int)val->val_len;
    return val->val;
}
