
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* (* init ) (char const*) ;} ;
typedef TYPE_1__ input_driver_t ;
struct TYPE_9__ {void* (* init ) (char const*) ;} ;
struct TYPE_8__ {void* (* init ) (char const*) ;} ;


 TYPE_1__ input_dinput ;
 TYPE_4__ input_uwp ;
 TYPE_1__ input_winraw ;
 TYPE_2__ input_xinput ;
 scalar_t__ string_is_equal (char const*,char*) ;
 void* stub1 (char const*) ;
 void* stub2 (char const*) ;
 void* stub3 (char const*) ;
 void* stub4 (char const*) ;
 void* stub5 (char const*) ;

void d3d_input_driver(const char* input_name, const char* joypad_name,
      input_driver_t** input, void** input_data)
{
}
