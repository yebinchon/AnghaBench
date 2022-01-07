
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dq_list_lock_cnt ;

__attribute__((used)) static int
dq_list_lock_changed(int oldval) {
 return (dq_list_lock_cnt != oldval);
}
