
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int die (int,int ,char*) ;
 int errno ;
 int fileno (int *) ;
 int * tmpfile () ;

__attribute__((used)) static int
tmpfd(void)
{
    FILE *f = tmpfile();
    if (!f) {
        die(1, errno, "tmpfile");
    }
    return fileno(f);
}
