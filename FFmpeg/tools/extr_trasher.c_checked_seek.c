
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int FILE ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ fseek (int *,scalar_t__,int) ;
 int stderr ;

__attribute__((used)) static void checked_seek(FILE *stream, int64_t offset, int whence)
{
    offset = fseek(stream, offset, whence);
    if (offset < 0) {
        fprintf(stderr, "seek failed\n");
        exit(1);
    }
}
