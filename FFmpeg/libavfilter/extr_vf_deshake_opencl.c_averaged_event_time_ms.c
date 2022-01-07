
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double averaged_event_time_ms(unsigned long long total_time, int num_frames) {
    return (double)total_time / (double)num_frames / 1000000.0;
}
