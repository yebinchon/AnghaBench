
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;



__attribute__((used)) static inline u8_t seg_len(bool ctl)
{
    if (ctl) {
        return 8;
    } else {
        return 12;
    }
}
