
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct trace_point {int const debugid; int arg1; } ;


 int const KDBG_EVENTID_MASK ;
 int T_EXPECT_EQ (scalar_t__,scalar_t__,int *) ;
 int T_LOG (char*,char const*,int const) ;
 int T_QUIET ;

__attribute__((used)) static void
expect_event(struct trace_point *tp, const char *name, unsigned int *events,
  const uint32_t *event_ids, size_t event_ids_len)
{
 unsigned int event_idx = *events;
 bool event_found = 0;
 size_t i;
 for (i = 0; i < event_ids_len; i++) {
  if (event_ids[i] == (tp->debugid & KDBG_EVENTID_MASK)) {
   T_LOG("found %s event 0x%x", name, tp->debugid);
   event_found = 1;
  }
 }

 if (!event_found) {
  return;
 }

 *events += 1;
 for (i = 0; i < event_idx; i++) {
  T_QUIET; T_EXPECT_EQ(((uint64_t *)&tp->arg1)[i], (uint64_t)i + 1,
    ((void*)0));
 }
 for (; i < 4; i++) {
  T_QUIET; T_EXPECT_EQ(((uint64_t *)&tp->arg1)[i], (uint64_t)0, ((void*)0));
 }
}
