
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int SHA2_256 ;
 int Sha (int ,void*,void*,int ) ;

void Sha2_256(void *dst, void *src, UINT size)
{
 Sha(SHA2_256, dst, src, size);
}
