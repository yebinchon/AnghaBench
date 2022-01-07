
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int * inp_label; } ;


 int ENOMEM ;
 int * mac_inpcb_label_alloc (int) ;

int
mac_inpcb_label_init(struct inpcb *inp, int flag)
{

 inp->inp_label = mac_inpcb_label_alloc(flag);
 if (inp->inp_label == ((void*)0))
  return (ENOMEM);
 return (0);
}
