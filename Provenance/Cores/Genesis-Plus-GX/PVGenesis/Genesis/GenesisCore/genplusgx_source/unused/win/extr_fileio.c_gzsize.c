
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gzFile ;


 int CHUNKSIZE ;
 int gzeof (int *) ;
 int gzread (int *,unsigned char*,int) ;
 int gzrewind (int *) ;

int gzsize(gzFile *gd)
{

    int size = 0, length = 0;
    unsigned char buffer[(0x10000)];
    gzrewind(gd);
    do {
        size = gzread(gd, buffer, (0x10000));
        if(size <= 0) break;
        length += size;
    } while (!gzeof(gd));
    gzrewind(gd);
    return (length);

}
