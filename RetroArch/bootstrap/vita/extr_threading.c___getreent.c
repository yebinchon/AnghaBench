
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _reent {int dummy; } ;


 struct _reent* __getreent_for_thread (int ) ;

struct _reent *__getreent(void) {
 return __getreent_for_thread(0);
}
