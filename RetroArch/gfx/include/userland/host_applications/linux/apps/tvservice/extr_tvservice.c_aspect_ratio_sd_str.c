
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDTV_ASPECT_T ;






__attribute__((used)) static const char *aspect_ratio_sd_str(SDTV_ASPECT_T aspect_ratio) {
   switch(aspect_ratio) {
   case 128:
      return "4:3";
   case 130:
      return "14:9";
   case 129:
      return "16:9";
   default:
      return "unknown AR";
   }
}
