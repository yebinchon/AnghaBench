
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ITEM_DURATION (int) ;

__attribute__((used)) static inline bool check_in_range(int duration_ticks, int target_us, int margin_us)
{
    if(( ITEM_DURATION(duration_ticks) < (target_us + margin_us))
        && ( ITEM_DURATION(duration_ticks) > (target_us - margin_us))) {
        return 1;
    } else {
        return 0;
    }
}
