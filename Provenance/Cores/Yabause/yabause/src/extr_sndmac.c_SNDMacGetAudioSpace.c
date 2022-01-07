
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ BUFFER_LEN ;
 scalar_t__ read_pos ;
 scalar_t__ write_pos ;

__attribute__((used)) static u32 SNDMacGetAudioSpace(void) {
    u32 fs = 0;

    if(write_pos > read_pos) {
        fs = BUFFER_LEN - write_pos + read_pos;
    }
    else {
        fs = read_pos - write_pos;
    }

    return (fs >> 2);
}
