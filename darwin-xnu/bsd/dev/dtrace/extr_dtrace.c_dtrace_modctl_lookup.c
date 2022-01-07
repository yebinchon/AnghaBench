
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modctl {scalar_t__ mod_id; struct modctl* mod_next; } ;
struct kmod_info {scalar_t__ id; } ;
typedef struct modctl modctl_t ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct modctl* dtrace_modctl_list ;
 int mod_lock ;

__attribute__((used)) static modctl_t *
dtrace_modctl_lookup(struct kmod_info * kmod)
{
    LCK_MTX_ASSERT(&mod_lock, LCK_MTX_ASSERT_OWNED);

    struct modctl * ctl;

    for (ctl = dtrace_modctl_list; ctl; ctl=ctl->mod_next) {
 if (ctl->mod_id == kmod->id)
     return(ctl);
    }
    return (((void*)0));
}
