
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_4__ {size_t curbytes; scalar_t__ curobjs; } ;
typedef TYPE_1__ quarantine_t ;


 int quarantine_drain_one (int *,TYPE_1__*) ;

__attribute__((used)) static void
quarantine_drain(tsd_t *tsd, quarantine_t *quarantine, size_t upper_bound)
{

 while (quarantine->curbytes > upper_bound && quarantine->curobjs > 0)
  quarantine_drain_one(tsd, quarantine);
}
