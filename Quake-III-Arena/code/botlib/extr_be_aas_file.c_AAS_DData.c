
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void AAS_DData(unsigned char *data, int size)
{
 int i;

 for (i = 0; i < size; i++)
 {
  data[i] ^= (unsigned char) i * 119;
 }
}
