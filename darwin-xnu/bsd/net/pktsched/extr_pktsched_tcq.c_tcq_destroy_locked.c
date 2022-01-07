
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcq_if {int tif_ifq; } ;


 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int LOG_DEBUG ;
 int TCQIF_IFP (struct tcq_if*) ;
 int if_name (int ) ;
 int log (int ,char*,int ,int ) ;
 scalar_t__ pktsched_verbose ;
 int tcq_clear_interface (struct tcq_if*) ;
 int tcq_style (struct tcq_if*) ;
 int tcq_zone ;
 int zfree (int ,struct tcq_if*) ;

__attribute__((used)) static int
tcq_destroy_locked(struct tcq_if *tif)
{
 IFCQ_LOCK_ASSERT_HELD(tif->tif_ifq);

 (void) tcq_clear_interface(tif);

 if (pktsched_verbose) {
  log(LOG_DEBUG, "%s: %s scheduler destroyed\n",
      if_name(TCQIF_IFP(tif)), tcq_style(tif));
 }

 zfree(tcq_zone, tif);

 return (0);
}
