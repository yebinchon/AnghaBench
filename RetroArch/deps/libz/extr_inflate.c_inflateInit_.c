
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z_streamp ;


 int DEF_WBITS ;
 int inflateInit2_ (int ,int ,char const*,int) ;

int inflateInit_(z_streamp strm, const char *version, int stream_size)
{
   return inflateInit2_(strm, DEF_WBITS, version, stream_size);
}
