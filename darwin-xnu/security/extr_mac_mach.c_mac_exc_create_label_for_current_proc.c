
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int current_proc () ;
 struct label* mac_exc_create_label_for_proc (int ) ;

struct label *
mac_exc_create_label_for_current_proc(void)
{
 return mac_exc_create_label_for_proc(current_proc());
}
