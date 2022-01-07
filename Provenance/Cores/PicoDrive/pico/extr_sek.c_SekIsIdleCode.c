
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAHW_32X ;
 int PAHW_MCD ;
 int PicoAHW ;

int SekIsIdleCode(unsigned short *dst, int bytes)
{

  switch (bytes)
  {
    case 2:
      if ((*dst & 0xf000) != 0x6000)
        return 1;
      break;
    case 4:
      if ( (*dst & 0xff3f) == 0x4a38 ||
           (*dst & 0xc1ff) == 0x0038 ||
           (*dst & 0xf13f) == 0xb038)
        return 1;
      if (PicoAHW & (PAHW_MCD|PAHW_32X))
        break;


      if ( (*dst & 0xfff8) == 0x4a10 ||
           (*dst & 0xfff8) == 0x4a28)
        return 1;
      break;
    case 6:
      if ( ((dst[1] & 0xe0) == 0xe0 && (
            *dst == 0x4a39 ||
            *dst == 0x4a79 ||
            *dst == 0x4ab9 ||
            (*dst & 0xc1ff) == 0x0039 ||
            (*dst & 0xf13f) == 0xb039))||
            *dst == 0x0838 ||
            (*dst & 0xffbf) == 0x0c38)
        return 1;
      break;
    case 8:
      if ( ((dst[2] & 0xe0) == 0xe0 && (
            *dst == 0x0839 ||
            (*dst & 0xffbf) == 0x0c39))||
            *dst == 0x0cb8)
        return 1;
      break;
    case 12:
      if (PicoAHW & (PAHW_MCD|PAHW_32X))
        break;
      if ( (*dst & 0xf1f8) == 0x3010 &&
            (dst[1]&0xf100) == 0x0000 &&
            (dst[3]&0xf100) == 0x0000)
        return 1;
      break;
  }

  return 0;
}
