
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int _rtc_nanotime_read (int *) ;
 int pal_rtc_nanotime_info ;

__attribute__((used)) static inline uint64_t
rtc_nanotime_read(void)
{
 return _rtc_nanotime_read(&pal_rtc_nanotime_info);
}
