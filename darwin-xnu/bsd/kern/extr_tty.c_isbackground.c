
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty {TYPE_1__* t_pgrp; int * t_session; } ;
typedef TYPE_2__* proc_t ;
struct TYPE_6__ {TYPE_1__* p_pgrp; } ;
struct TYPE_5__ {int pg_session; } ;


 int TTY_LOCK_OWNED (struct tty*) ;
 scalar_t__ isctty_sp (TYPE_2__*,struct tty*,int ) ;

int
isbackground(proc_t p, struct tty *tp)
{
 TTY_LOCK_OWNED(tp);

 return (tp->t_session != ((void*)0) && p->p_pgrp != ((void*)0) && (p->p_pgrp != tp->t_pgrp) && isctty_sp(p, tp, p->p_pgrp->pg_session));
}
