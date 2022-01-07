
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int clac () ;
 scalar_t__ pmap_smap_enabled ;
 int smaplog_add_entry (int ) ;

__attribute__((used)) static inline void user_access_disable(void) {
 if (pmap_smap_enabled) {
  clac();



 }
}
