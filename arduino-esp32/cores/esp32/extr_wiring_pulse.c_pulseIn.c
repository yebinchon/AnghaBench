
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned long uint32_t ;


 unsigned long const UINT_MAX ;
 int WAIT_FOR_PIN_STATE (int) ;
 unsigned long clockCyclesToMicroseconds (unsigned long const) ;
 unsigned long microsecondsToClockCycles (unsigned long) ;
 unsigned long const xthal_get_ccount () ;

unsigned long pulseIn(uint8_t pin, uint8_t state, unsigned long timeout)
{
    const uint32_t max_timeout_us = clockCyclesToMicroseconds(UINT_MAX);
    if (timeout > max_timeout_us) {
        timeout = max_timeout_us;
    }
    const uint32_t timeout_cycles = microsecondsToClockCycles(timeout);
    const uint32_t start_cycle_count = xthal_get_ccount();
    WAIT_FOR_PIN_STATE(!state);
    WAIT_FOR_PIN_STATE(state);
    const uint32_t pulse_start_cycle_count = xthal_get_ccount();
    WAIT_FOR_PIN_STATE(!state);
    return clockCyclesToMicroseconds(xthal_get_ccount() - pulse_start_cycle_count);
}
