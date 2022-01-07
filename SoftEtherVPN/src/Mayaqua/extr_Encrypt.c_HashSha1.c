
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int Sha1 (void*,void*,int ) ;

void HashSha1(void *dst, void *src, UINT size)
{
 Sha1(dst, src, size);
}
