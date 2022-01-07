
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int buf ;
typedef int FILE ;


 int die (int,int ,char*) ;
 int errno ;
 size_t fwrite (char*,int,scalar_t__,int *) ;
 scalar_t__ read (int,char*,int) ;

__attribute__((used)) static void
copyfd(FILE *out, int in)
{
    ssize_t n;
    char buf[1024];

    while ((n = read(in, buf, sizeof(buf))) != 0) {
        if (fwrite(buf, 1, n, out) != (size_t)n) {
            die(3, errno, "fwrite");
        }
    }
}
