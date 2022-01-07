
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {short tu_pollevents; int tu_kev; } ;
struct TYPE_6__ {char* t_testname; char* t_watchfile; int t_n_prep_actions; int t_n_cleanup_actions; int t_want_event; int t_is_poll_test; int t_nbytes; TYPE_1__ t_union; scalar_t__ t_nondeterministic; scalar_t__ t_known_failure; } ;
typedef TYPE_2__ test_t ;


 int EVFILT_READ ;
 int EVFILT_VNODE ;
 int EVFILT_WRITE ;
 int EV_ADD ;
 int EV_ENABLE ;
 int EV_SET (int *,int ,int,int,int,int ,int *) ;
 int memset (TYPE_2__*,int ,int) ;

void
init_test_common(test_t *tst, char *testname, char *watchfile, int nprep, int nclean, int event, int want, int ispoll)
{
 memset(tst, 0, sizeof(test_t));
 tst->t_testname = testname;
 tst->t_known_failure = 0;
 tst->t_nondeterministic = 0;
 tst->t_watchfile = watchfile;
 tst->t_n_prep_actions = nprep;
 tst->t_n_cleanup_actions = nclean;
 tst->t_want_event = (want > 0);

 if (ispoll) {
  tst->t_is_poll_test = 1;
  tst->t_union.tu_pollevents = (short)event;
 } else {

  if (event == EVFILT_READ || event == EVFILT_WRITE) {
   EV_SET(&tst->t_union.tu_kev, 0, event, EV_ADD | EV_ENABLE, 0, 0, ((void*)0));
   tst->t_nbytes = want;
  } else {
   EV_SET(&tst->t_union.tu_kev, 0, EVFILT_VNODE, EV_ADD | EV_ENABLE, event, 0, ((void*)0));
  }
 }
}
