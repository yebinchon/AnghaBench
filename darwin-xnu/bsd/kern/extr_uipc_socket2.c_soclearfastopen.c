
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags1; } ;


 int SOF1_DATA_IDEMPOTENT ;
 int SOF1_PRECONNECT_DATA ;

void
soclearfastopen(struct socket *so)
{
 if (so->so_flags1 & SOF1_PRECONNECT_DATA)
  so->so_flags1 &= ~SOF1_PRECONNECT_DATA;

 if (so->so_flags1 & SOF1_DATA_IDEMPOTENT)
  so->so_flags1 &= ~SOF1_DATA_IDEMPOTENT;
}
