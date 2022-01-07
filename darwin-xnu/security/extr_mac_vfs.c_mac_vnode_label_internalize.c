
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_INTERNALIZE (int ,struct label*,char*) ;
 int vnode ;

int
mac_vnode_label_internalize(struct label *label, char *string)
{
 int error;

 error = MAC_INTERNALIZE(vnode, label, string);

 return (error);
}
