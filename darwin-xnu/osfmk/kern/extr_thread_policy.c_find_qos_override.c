
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ user_addr_t ;
typedef TYPE_1__* thread_t ;
struct thread_qos_override {scalar_t__ override_resource; int override_resource_type; struct thread_qos_override* override_next; } ;
struct TYPE_3__ {struct thread_qos_override* overrides; } ;



__attribute__((used)) static struct thread_qos_override *
find_qos_override(thread_t thread,
                  user_addr_t resource,
                  int resource_type)
{
 struct thread_qos_override *override;

 override = thread->overrides;
 while (override) {
  if (override->override_resource == resource &&
      override->override_resource_type == resource_type) {
   return override;
  }

  override = override->override_next;
 }

 return ((void*)0);
}
