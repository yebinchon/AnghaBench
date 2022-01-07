
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wiiu_attach_event ;
typedef int uint32_t ;
struct TYPE_2__ {int list; } ;


 scalar_t__ SwapAtomic32 (int *,int ) ;
 TYPE_1__ events ;

__attribute__((used)) static wiiu_attach_event *synchronized_get_events_list(void)
{
   return (wiiu_attach_event *)SwapAtomic32((uint32_t *)&events.list, 0);
}
