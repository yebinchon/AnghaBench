
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int Com_HashKey(char *string, int maxlen) {
 int register hash, i;

 hash = 0;
 for (i = 0; i < maxlen && string[i] != '\0'; i++) {
  hash += string[i] * (119 + i);
 }
 hash = (hash ^ (hash >> 10) ^ (hash >> 20));
 return hash;
}
