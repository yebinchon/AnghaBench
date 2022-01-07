
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDEBUG_ENABLE_TRACE ;
 int _sysctl_enable (int ) ;

__attribute__((used)) static void enable_tracing(bool value) {
 _sysctl_enable(value ? KDEBUG_ENABLE_TRACE : 0);
}
