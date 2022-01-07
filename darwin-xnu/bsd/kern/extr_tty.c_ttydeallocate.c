
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int si_note; } ;
struct TYPE_3__ {int si_note; } ;
struct tty {int t_lock; int t_outq; int t_canq; int t_rawq; TYPE_2__ t_wsel; TYPE_1__ t_rsel; } ;


 int FREE (struct tty*,int ) ;
 int M_TTYS ;
 scalar_t__ SLIST_EMPTY (int *) ;
 int TTY_LOCK_NOTOWNED (struct tty*) ;
 int clfree (int *) ;
 int lck_mtx_destroy (int *,int ) ;
 int panic (char*) ;
 int tty_lck_grp ;

__attribute__((used)) static void
ttydeallocate(struct tty *tp)
{
 TTY_LOCK_NOTOWNED(tp);







 clfree(&tp->t_rawq);
 clfree(&tp->t_canq);
 clfree(&tp->t_outq);
 lck_mtx_destroy(&tp->t_lock, tty_lck_grp);
 FREE(tp, M_TTYS);
}
