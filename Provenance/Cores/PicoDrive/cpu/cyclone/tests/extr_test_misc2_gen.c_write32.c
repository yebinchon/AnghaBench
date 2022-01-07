
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int a ;


 int bswap32 (unsigned int) ;
 int f ;
 int fwrite (unsigned int*,int,int,int ) ;

__attribute__((used)) static void write32(unsigned int a)
{
 bswap32(a);
 fwrite(&a, 1, sizeof(a), f);
}
