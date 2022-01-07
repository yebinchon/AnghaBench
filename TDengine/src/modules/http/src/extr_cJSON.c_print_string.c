
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int printbuffer ;
typedef int cJSON_bool ;
struct TYPE_3__ {scalar_t__ valuestring; } ;
typedef TYPE_1__ cJSON ;


 int print_string_ptr (unsigned char*,int * const) ;

__attribute__((used)) static cJSON_bool print_string(const cJSON * const item, printbuffer * const p)
{
    return print_string_ptr((unsigned char*)item->valuestring, p);
}
