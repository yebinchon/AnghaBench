
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zlib {int rc; } ;
__attribute__((used)) static const char *
zlib_rc(struct zlib *zlib)

{
   switch (zlib->rc)
   {
      case 131: return "Z_OK";
      case 130: return "Z_STREAM_END";
      case 132: return "Z_NEED_DICT";
      case 134: return "Z_ERRNO";
      case 129: return "Z_STREAM_ERROR";
      case 135: return "Z_DATA_ERROR";
      case 133: return "Z_MEM_ERROR";
      case 136: return "Z_BUF_ERROR";
      case 128: return "Z_VERSION_ERROR";
      default: return "Z_*INVALID_RC*";
   }
}
