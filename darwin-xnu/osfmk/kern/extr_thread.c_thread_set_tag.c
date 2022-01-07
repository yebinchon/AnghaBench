
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int thread_t ;


 int thread_set_tag_internal (int ,int ) ;

uint16_t
thread_set_tag(thread_t th, uint16_t tag)
{
 return thread_set_tag_internal(th, tag);
}
