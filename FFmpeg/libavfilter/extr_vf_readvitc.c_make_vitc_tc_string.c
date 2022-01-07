
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int AV_TIMECODE_STR_SIZE ;
 unsigned int bcd2uint (int,int) ;
 int snprintf (char*,int ,char*,unsigned int,unsigned int,unsigned int,char,unsigned int) ;

__attribute__((used)) static char *make_vitc_tc_string(char *buf, uint8_t *line)
{
    unsigned hh = bcd2uint(line[7] & 0x03, line[6] & 0x0f);
    unsigned mm = bcd2uint(line[5] & 0x07, line[4] & 0x0f);
    unsigned ss = bcd2uint(line[3] & 0x07, line[2] & 0x0f);
    unsigned ff = bcd2uint(line[1] & 0x03, line[0] & 0x0f);
    unsigned drop = (line[1] & 0x04);
    snprintf(buf, AV_TIMECODE_STR_SIZE, "%02u:%02u:%02u%c%02u",
             hh, mm, ss, drop ? ';' : ':', ff);
    return buf;
}
