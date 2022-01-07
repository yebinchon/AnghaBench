
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ledger_entry {int le_flags; } ;
typedef int event_t ;


 int LF_CALLED_BACK ;
 int LF_WAKE_NEEDED ;
 int flag_clear (int*,int) ;
 int limit_exceeded (struct ledger_entry*) ;
 int thread_wakeup (int ) ;

__attribute__((used)) static inline void
ledger_limit_entry_wakeup(struct ledger_entry *le)
{
 uint32_t flags;

 if (!limit_exceeded(le)) {
  flags = flag_clear(&le->le_flags, LF_CALLED_BACK);

  while (le->le_flags & LF_WAKE_NEEDED) {
   flag_clear(&le->le_flags, LF_WAKE_NEEDED);
   thread_wakeup((event_t)le);
  }
 }
}
