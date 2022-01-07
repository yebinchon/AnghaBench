
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileglob {int fg_label; } ;


 int mac_file_label_alloc () ;

void
mac_file_label_init(struct fileglob *fg)
{

 fg->fg_label = mac_file_label_alloc();
}
