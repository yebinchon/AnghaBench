
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static inline uint64_t httpd_sess_get_lru_counter(void)
{
    static uint64_t lru_counter = 0;
    return lru_counter++;
}
