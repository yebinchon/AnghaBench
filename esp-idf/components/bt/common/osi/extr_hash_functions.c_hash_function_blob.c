
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* hash_key_t ;



void hash_function_blob(const unsigned char *s, unsigned int len, hash_key_t h)
{
    size_t j;

    while (len--) {
        j = sizeof(hash_key_t)-1;

        while (j) {
            h[j] = ((h[j] << 7) | (h[j-1] >> 1)) + h[j];
            --j;
        }

        h[0] = (h[0] << 7) + h[0] + *s++;
    }
}
