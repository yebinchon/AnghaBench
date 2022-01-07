
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ssize_t ;


 int sscanf (char const*,char*,int *) ;
 size_t strlen (char const*) ;

__attribute__((used)) static ssize_t hex2bin(const char *hexstr, uint8_t *bytes)
{
    size_t hexstrLen = strlen(hexstr);
    ssize_t bytesLen = hexstrLen / 2;

    int count = 0;
    const char *pos = hexstr;

    for(count = 0; count < bytesLen; count++) {
        sscanf(pos, "%2hhx", &bytes[count]);
        pos += 2;
    }

    return bytesLen;
}
