
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

void readpng_version_info()
{
    fprintf(stderr, "   Compiled without libpng, zlib or PBMPLUS/NetPBM.\n");
}
