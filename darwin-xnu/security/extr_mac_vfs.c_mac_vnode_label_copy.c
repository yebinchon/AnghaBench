
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int MAC_PERFORM (int ,struct label*,...) ;
 int vnode_label_copy ;
 int vnode_label_init ;

void
mac_vnode_label_copy(struct label *src, struct label *dest)
{
 if (src == ((void*)0)) {
  MAC_PERFORM(vnode_label_init, dest);
 } else {
  MAC_PERFORM(vnode_label_copy, src, dest);
 }
}
