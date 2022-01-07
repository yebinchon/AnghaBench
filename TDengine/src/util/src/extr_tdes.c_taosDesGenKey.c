
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int generate_key (unsigned char*) ;
 int srand (unsigned int) ;
 scalar_t__ time (int *) ;

int64_t taosDesGenKey() {
  unsigned int iseed = (unsigned int)time(((void*)0));
  srand(iseed);

  unsigned char key[8] = {0};
  generate_key(key);

  return *((int64_t*)key);
}
