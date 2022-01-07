
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int assert (int) ;
 int * panic_info ;

uint32_t
PE_get_offset_into_panic_region(char *location)
{
 assert(panic_info != ((void*)0));
 assert(location > (char *) panic_info);

 return (uint32_t) (location - (char *) panic_info);
}
