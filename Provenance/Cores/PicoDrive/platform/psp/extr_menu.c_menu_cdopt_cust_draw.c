
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bios_names_t {char* us; char* eu; char* jp; } ;
struct TYPE_3__ {int id; } ;
typedef TYPE_1__ menu_entry ;






 int PicoCDBuffers ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char*) ;
 int text_out16 (int,int,char*,char*) ;

__attribute__((used)) static void menu_cdopt_cust_draw(const menu_entry *entry, int x, int y, void *param)
{
 struct bios_names_t *bios_names = param;
 char ra_buff[16];

 switch (entry->id)
 {
  case 128: text_out16(x, y, "USA BIOS:     %s", bios_names->us); break;
  case 130: text_out16(x, y, "EUR BIOS:     %s", bios_names->eu); break;
  case 129: text_out16(x, y, "JAP BIOS:     %s", bios_names->jp); break;
  case 131:
   if (PicoCDBuffers > 1) sprintf(ra_buff, "%5iK", PicoCDBuffers * 2);
   else strcpy(ra_buff, "     OFF");
   text_out16(x, y, "ReadAhead buffer      %s", ra_buff);
   break;
  default:break;
 }
}
