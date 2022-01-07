
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fqs_ifq; } ;
typedef TYPE_1__ fq_if_t ;
typedef int cqev_t ;




 int IFCQ_LOCK_ASSERT_HELD (int ) ;
 int fq_if_purge (TYPE_1__*) ;

__attribute__((used)) static void
fq_if_event(fq_if_t *fqs, cqev_t ev)
{
 IFCQ_LOCK_ASSERT_HELD(fqs->fqs_ifq);

 switch (ev) {
 case 128:
 case 129:
  fq_if_purge(fqs);
  break;
 default:
  break;
 }
}
