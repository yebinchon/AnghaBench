
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uio_t ;
typedef int addr64_t ;


 int uiomove64 (int const,int,int ) ;

int
uiomove(const char * cp, int n, uio_t uio)
{
 return uiomove64((const addr64_t)(uintptr_t)cp, n, uio);
}
