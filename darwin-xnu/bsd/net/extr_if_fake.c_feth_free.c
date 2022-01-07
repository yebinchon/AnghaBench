
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* if_fake_ref ;
struct TYPE_5__ {scalar_t__ iff_retain_count; int iff_name; scalar_t__ iff_pending_tx_packet; } ;


 int FETH_DPRINTF (char*,int ) ;
 int assert (int) ;
 int feth_cloner ;
 scalar_t__ feth_in_bsd_mode (TYPE_1__*) ;
 int if_clone_softc_deallocate (int *,TYPE_1__*) ;
 int m_freem (scalar_t__) ;

__attribute__((used)) static void
feth_free(if_fake_ref fakeif)
{
 assert(fakeif->iff_retain_count == 0);
 if (feth_in_bsd_mode(fakeif)) {
  if (fakeif->iff_pending_tx_packet) {
   m_freem(fakeif->iff_pending_tx_packet);
  }
 }

 FETH_DPRINTF("%s\n", fakeif->iff_name);
 if_clone_softc_deallocate(&feth_cloner, fakeif);
}
