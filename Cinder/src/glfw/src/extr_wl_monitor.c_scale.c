
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl_output {int dummy; } ;
struct TYPE_2__ {int scale; } ;
struct _GLFWmonitor {TYPE_1__ wl; } ;
typedef int int32_t ;



__attribute__((used)) static void scale(void* data,
                  struct wl_output* output,
                  int32_t factor)
{
    struct _GLFWmonitor *monitor = data;

    monitor->wl.scale = factor;
}
