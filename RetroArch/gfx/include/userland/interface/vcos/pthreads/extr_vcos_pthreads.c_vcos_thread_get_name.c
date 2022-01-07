
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ VCOS_THREAD_T ;



const char * vcos_thread_get_name(const VCOS_THREAD_T *thread)
{
   return thread->name;
}
