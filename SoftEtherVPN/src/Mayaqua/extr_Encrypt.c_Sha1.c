
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int SHA1_160 ;
 int Sha (int ,void*,void*,int ) ;

void Sha1(void *dst, void *src, UINT size)
{
 Sha(SHA1_160, dst, src, size);
}
