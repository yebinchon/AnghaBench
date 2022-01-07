
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buffer; } ;
struct TYPE_5__ {TYPE_1__ wl; } ;
typedef TYPE_2__ _GLFWcursor ;


 int wl_buffer_destroy (int ) ;

void _glfwPlatformDestroyCursor(_GLFWcursor* cursor)
{
    wl_buffer_destroy(cursor->wl.buffer);
}
