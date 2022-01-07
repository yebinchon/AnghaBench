
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z_streamp ;


 int DEF_MEM_LEVEL ;
 int MAX_WBITS ;
 int Z_DEFAULT_STRATEGY ;
 int Z_DEFLATED ;
 int deflateInit2_ (int ,int,int ,int ,int ,int ,char const*,int) ;

int deflateInit_(z_streamp strm, int level, const char *version, int stream_size)
{
   return deflateInit2_(strm, level, Z_DEFLATED, MAX_WBITS, DEF_MEM_LEVEL,
         Z_DEFAULT_STRATEGY, version, stream_size);

}
