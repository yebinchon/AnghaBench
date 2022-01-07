
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline uint8_t get_pit_avg3( uint8_t *line, int i ) {
    return ((line[i-1] + line[i] + line[i+1]) / 3);
}
