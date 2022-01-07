
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_mpi ;
typedef int buf ;


 int mbedtls_mpi_write_string (int const*,int,char*,int,size_t*) ;
 int memset (char*,int ,int) ;
 int printf (char*,char const*,...) ;

void mbedtls_mpi_printf(const char *name, const mbedtls_mpi *X)
{
    static char buf[1024];
    size_t n;
    memset(buf, 0, sizeof(buf));
    mbedtls_mpi_write_string(X, 16, buf, sizeof(buf)-1, &n);
    if(n) {
        printf("%s = 0x%s\n", name, buf);
    } else {
        printf("%s = TOOLONG\n", name);
    }
}
