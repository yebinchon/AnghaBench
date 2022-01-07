
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* PNG_LIBPNG_VER_STRING ;
 char* ZLIB_VERSION ;
 int fprintf (int ,char*,char*,char*) ;
 char* png_libpng_ver ;
 int stderr ;
 char* zlib_version ;

void readpng2_version_info(void)
{
    fprintf(stderr, "   Compiled with libpng %s; using libpng %s\n",
      PNG_LIBPNG_VER_STRING, png_libpng_ver);

    fprintf(stderr, "   and with zlib %s; using zlib %s.\n",
      ZLIB_VERSION, zlib_version);
}
