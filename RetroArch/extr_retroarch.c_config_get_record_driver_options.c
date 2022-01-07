
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STRING_LIST_RECORD_DRIVERS ;
 char const* char_list_new_special (int ,int *) ;

const char* config_get_record_driver_options(void)
{
   return char_list_new_special(STRING_LIST_RECORD_DRIVERS, ((void*)0));
}
