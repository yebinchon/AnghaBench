
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_nw_activity; } ;
typedef int activity_bitmap_t ;


 int bcopy (int *,int *,int) ;

inline void
inp_get_activity_bitmap(struct inpcb *inp, activity_bitmap_t *ab)
{
 bcopy(&inp->inp_nw_activity, ab, sizeof (*ab));
}
