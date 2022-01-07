
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileglob {int * fg_label; } ;


 int mac_file_label_free (int *) ;

void
mac_file_label_destroy(struct fileglob *fg)
{

 mac_file_label_free(fg->fg_label);
 fg->fg_label = ((void*)0);
}
