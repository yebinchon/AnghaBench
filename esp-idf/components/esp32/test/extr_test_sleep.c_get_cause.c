
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int REG_GET_FIELD (int ,int ) ;
 int RTC_CNTL_WAKEUP_CAUSE ;
 int RTC_CNTL_WAKEUP_STATE_REG ;

__attribute__((used)) static uint32_t get_cause(void)
{
    uint32_t wakeup_cause = REG_GET_FIELD(RTC_CNTL_WAKEUP_STATE_REG, RTC_CNTL_WAKEUP_CAUSE);

    return wakeup_cause;
}
