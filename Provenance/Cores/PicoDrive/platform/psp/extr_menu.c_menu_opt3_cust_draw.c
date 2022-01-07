
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ menu_entry ;
struct TYPE_5__ {char* scale; char* hscale32; char* hscale40; char* gamma; char* gamma2; int EmuOpt; int scaling; } ;
 TYPE_3__ currentConfig ;
 int text_out16 (int,int,char*,char*) ;

__attribute__((used)) static void menu_opt3_cust_draw(const menu_entry *entry, int x, int y, void *param)
{
 switch (entry->id)
 {
  case 129:
   text_out16(x, y, "Scale factor:                      %.2f", currentConfig.scale);
   break;
  case 131:
   text_out16(x, y, "Hor. scale (for low res. games):   %.2f", currentConfig.hscale32);
   break;
  case 130:
   text_out16(x, y, "Hor. scale (for hi res. games):    %.2f", currentConfig.hscale40);
   break;
  case 133:
   text_out16(x, y, "Bilinear filtering                 %s", currentConfig.scaling?"ON":"OFF");
   break;
  case 132:
   text_out16(x, y, "Gamma adjustment                  %2i", currentConfig.gamma);
   break;
  case 134:
   text_out16(x, y, "Black level                       %2i", currentConfig.gamma2);
   break;
  case 128: {
   char *val = "    never";
   if (currentConfig.EmuOpt & 0x2000)
    val = (currentConfig.EmuOpt & 0x10000) ? "sometimes" : "   always";
   text_out16(x, y, "Wait for vsync (slow)         %s", val);
   break;
  }
  default: break;
 }
}
