
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_2__ {scalar_t__ count; } ;


 scalar_t__ JETSAM_PRIORITY_IDLE ;
 scalar_t__ MEMSTAT_BUCKET_COUNT ;
 TYPE_1__* memstat_bucket ;

int
memorystatus_get_proccnt_upto_priority(int32_t max_bucket_index)
{
 int32_t i = JETSAM_PRIORITY_IDLE;
 int count = 0;

 if (max_bucket_index >= MEMSTAT_BUCKET_COUNT) {
                return(-1);
        }

 while(i <= max_bucket_index) {
  count += memstat_bucket[i++].count;
 }

 return count;
}
