
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bufhashhdr {TYPE_2__* lh_first; } ;
typedef TYPE_2__* buf_t ;
struct TYPE_6__ {TYPE_2__* le_next; } ;
struct TYPE_7__ {TYPE_1__ b_hash; } ;


 int BHASHENTCHECK (TYPE_2__*) ;
 int blistenterhead (struct bufhashhdr*,TYPE_2__*) ;
 int panic (char*) ;

__attribute__((used)) static __inline__ void
binshash(buf_t bp, struct bufhashhdr *dp)
{




 BHASHENTCHECK(bp);
 blistenterhead(dp, bp);
}
