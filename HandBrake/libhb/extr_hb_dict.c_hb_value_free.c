
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int hb_value_decref (int *) ;

void hb_value_free(hb_value_t **_value)
{
    hb_value_decref(*_value);
    *_value = ((void*)0);
}
