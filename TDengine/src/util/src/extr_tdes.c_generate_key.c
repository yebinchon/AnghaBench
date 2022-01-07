
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rand () ;

void generate_key(unsigned char* key) {
  int i;
  for (i = 0; i < 8; i++) {
    key[i] = rand() % 255;
  }
}
