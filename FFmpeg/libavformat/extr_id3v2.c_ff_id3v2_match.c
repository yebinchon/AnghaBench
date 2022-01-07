
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;



int ff_id3v2_match(const uint8_t *buf, const char *magic)
{
    return buf[0] == magic[0] &&
            buf[1] == magic[1] &&
            buf[2] == magic[2] &&
            buf[3] != 0xff &&
            buf[4] != 0xff &&
           (buf[6] & 0x80) == 0 &&
           (buf[7] & 0x80) == 0 &&
           (buf[8] & 0x80) == 0 &&
           (buf[9] & 0x80) == 0;
}
