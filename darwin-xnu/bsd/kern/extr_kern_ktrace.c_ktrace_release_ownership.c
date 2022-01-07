
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ktrace_owning_pid ;
 scalar_t__ ktrace_owning_unique_id ;

__attribute__((used)) static void
ktrace_release_ownership(void)
{
 ktrace_owning_unique_id = 0;
 ktrace_owning_pid = 0;
}
