
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int * inp_label; } ;


 int mac_inpcb_label_free (int *) ;

void
mac_inpcb_label_destroy(struct inpcb *inp)
{

 mac_inpcb_label_free(inp->inp_label);
 inp->inp_label = ((void*)0);
}
