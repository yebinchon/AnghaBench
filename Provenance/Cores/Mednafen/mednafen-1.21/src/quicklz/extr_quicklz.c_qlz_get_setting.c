
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QLZ_COMPRESSION_LEVEL ;
 int QLZ_SCRATCH_COMPRESS ;
 int QLZ_SCRATCH_DECOMPRESS ;
 int QLZ_STREAMING_MODE_VALUE ;
 int QLZ_VERSION_MAJOR ;
 int QLZ_VERSION_MINOR ;
 int QLZ_VERSION_REVISION ;

int qlz_get_setting(int setting)
{
 switch (setting)
 {
  case 0: return QLZ_COMPRESSION_LEVEL;
  case 1: return QLZ_SCRATCH_COMPRESS;
  case 2: return QLZ_SCRATCH_DECOMPRESS;
  case 3: return QLZ_STREAMING_MODE_VALUE;



  case 4: return 0;




  case 5: return 0;




  case 6: return 0;

  case 7: return QLZ_VERSION_MAJOR;
  case 8: return QLZ_VERSION_MINOR;
  case 9: return QLZ_VERSION_REVISION;
 }
 return -1;
}
