
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* crc32tab ;

unsigned int
hash_string(const char *cp, int len)
{
    unsigned hash = 0;

    if (len) {
            while (len--) {
      hash = crc32tab[((hash >> 24) ^ (unsigned char)*cp++)] ^ hash << 8;
     }
    } else {
            while (*cp != '\0') {
      hash = crc32tab[((hash >> 24) ^ (unsigned char)*cp++)] ^ hash << 8;
     }
    }





    if (hash == 0)
            hash = 1;
    return hash;
}
