
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 int RAND_bytes (void*,scalar_t__) ;

void Rand(void *buf, UINT size)
{

 if (buf == ((void*)0) || size == 0)
 {
  return;
 }
 RAND_bytes(buf, size);
}
