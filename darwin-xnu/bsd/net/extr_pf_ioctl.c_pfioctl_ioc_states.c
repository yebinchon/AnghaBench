
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int u_long ;
typedef int u_int32_t ;
struct proc {int dummy; } ;
struct pfsync_state {int dummy; } ;
struct pfioc_states_64 {int ps_len; int ps_buf; } ;
struct pfioc_states_32 {int ps_len; int ps_buf; } ;
struct pf_state {int state_key; int timeout; } ;
struct TYPE_2__ {int states; } ;



 int ENOMEM ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int PFTM_UNLINKED ;
 struct pf_state* TAILQ_FIRST (int *) ;
 struct pf_state* TAILQ_NEXT (struct pf_state*,int ) ;
 int VERIFY (int ) ;
 int _FREE (struct pfsync_state*,int ) ;
 struct pfsync_state* _MALLOC (int,int ,int) ;
 int copyout (struct pfsync_state*,int,int) ;
 int entry_list ;
 int pf_state_export (struct pfsync_state*,int ,struct pf_state*) ;
 TYPE_1__ pf_status ;
 int proc_is64bit (struct proc*) ;
 int state_list ;

__attribute__((used)) static int
pfioctl_ioc_states(u_long cmd, struct pfioc_states_32 *ps32,
    struct pfioc_states_64 *ps64, struct proc *p)
{
 int p64 = proc_is64bit(p);
 int error = 0;

 switch (cmd) {
 case 128: {
  struct pf_state *state;
  struct pfsync_state *pstore;
  user_addr_t buf;
  u_int32_t nr = 0;
  int len, size;

  len = (p64 ? ps64->ps_len : ps32->ps_len);
  if (len == 0) {
   size = sizeof (struct pfsync_state) * pf_status.states;
   if (p64)
    ps64->ps_len = size;
   else
    ps32->ps_len = size;
   break;
  }

  pstore = _MALLOC(sizeof (*pstore), M_TEMP, M_WAITOK | M_ZERO);
  if (pstore == ((void*)0)) {
   error = ENOMEM;
   break;
  }
  buf = (p64 ? ps64->ps_buf : ps32->ps_buf);

  state = TAILQ_FIRST(&state_list);
  while (state) {
   if (state->timeout != PFTM_UNLINKED) {
    if ((nr + 1) * sizeof (*pstore) > (unsigned)len)
     break;

    pf_state_export(pstore,
        state->state_key, state);
    error = copyout(pstore, buf, sizeof (*pstore));
    if (error) {
     _FREE(pstore, M_TEMP);
     goto fail;
    }
    buf += sizeof (*pstore);
    nr++;
   }
   state = TAILQ_NEXT(state, entry_list);
  }

  size = sizeof (struct pfsync_state) * nr;
  if (p64)
   ps64->ps_len = size;
  else
   ps32->ps_len = size;

  _FREE(pstore, M_TEMP);
  break;
 }

 default:
  VERIFY(0);

 }
fail:
 return (error);
}
