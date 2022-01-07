
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void usage(void)
{
    printf("Show the relationships between rawvideo pixel formats and FourCC tags.\n");
    printf("usage: fourcc2pixfmt [OPTIONS]\n");
    printf("\n"
           "Options:\n"
           "-l                list the pixel format for each fourcc\n"
           "-L                list the fourccs for each pixel format\n"
           "-p PIX_FMT        given a pixel format, print the list of associated fourccs (one per line)\n"
           "-h                print this help\n");
}
