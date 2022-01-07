
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kernel_debug_string_early (char const*) ;

__attribute__((used)) static inline void
kernel_bootstrap_log(const char *message)
{

 kernel_debug_string_early(message);
}
