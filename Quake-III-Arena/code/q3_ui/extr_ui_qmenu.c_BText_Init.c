
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ generic; } ;
typedef TYPE_2__ menutext_s ;


 int QMF_INACTIVE ;

__attribute__((used)) static void BText_Init( menutext_s *t )
{
 t->generic.flags |= QMF_INACTIVE;
}
