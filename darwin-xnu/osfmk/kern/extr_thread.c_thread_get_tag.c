
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int thread_t ;


 int thread_get_tag_internal (int ) ;

uint16_t
thread_get_tag(thread_t th)
{
 return thread_get_tag_internal(th);
}
