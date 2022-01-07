
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
typedef TYPE_1__ _GLFWjoystickLinux ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int compareJoysticks(const void* fp, const void* sp)
{
    const _GLFWjoystickLinux* fj = fp;
    const _GLFWjoystickLinux* sj = sp;
    return strcmp(fj->path, sj->path);
}
