
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int base64_enc_len(unsigned int plainLen) {
 unsigned int n = plainLen;
 return (n + 2 - ((n + 2) % 3)) / 3 * 4;
}
