
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int hz ;
 scalar_t__ ipsec_bypass ;
 scalar_t__ key_timehandler ;
 int key_timehandler_running ;
 int sadb_mutex ;
 int timeout (void*,void*,int ) ;

__attribute__((used)) static void
key_start_timehandler(void)
{

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);
 if (key_timehandler_running == 0) {
  key_timehandler_running = 1;
  (void)timeout((void *)key_timehandler, (void *)0, hz);
 }


 if (ipsec_bypass != 0)
  ipsec_bypass = 0;
}
