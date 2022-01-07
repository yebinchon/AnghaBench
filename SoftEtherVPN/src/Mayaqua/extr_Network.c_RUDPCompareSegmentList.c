
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int SeqNo; } ;
typedef TYPE_1__ RUDP_SEGMENT ;


 int COMPARE_RET (int ,int ) ;

int RUDPCompareSegmentList(void *p1, void *p2)
{
 RUDP_SEGMENT *s1, *s2;
 UINT r;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 s1 = *((RUDP_SEGMENT **)p1);
 s2 = *((RUDP_SEGMENT **)p2);
 if (s1 == ((void*)0) || s2 == ((void*)0))
 {
  return 0;
 }

 r = COMPARE_RET(s1->SeqNo, s2->SeqNo);

 return r;
}
