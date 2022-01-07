
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Rand (void*,int ) ;
 int SHA1_SIZE ;

void GenRandom(void *random)
{

 if (random == ((void*)0))
 {
  return;
 }

 Rand(random, SHA1_SIZE);
}
