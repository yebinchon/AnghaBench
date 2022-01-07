
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int boolean_t ;


 int THREAD_TAG_WORKQUEUE ;
 int thread_get_tag (int ) ;

__attribute__((used)) static inline boolean_t
is_workqueue_thread(thread_t thread)
{
 return (thread_get_tag(thread) & THREAD_TAG_WORKQUEUE);
}
