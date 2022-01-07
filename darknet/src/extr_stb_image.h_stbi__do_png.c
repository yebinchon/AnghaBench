
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int stbi__uint16 ;
struct TYPE_8__ {int bits_per_channel; } ;
typedef TYPE_2__ stbi__result_info ;
struct TYPE_9__ {int depth; int * idata; int * expanded; int * out; TYPE_1__* s; } ;
typedef TYPE_3__ stbi__png ;
struct TYPE_7__ {int img_out_n; int img_x; int img_y; int img_n; } ;


 int STBI_FREE (int *) ;
 int STBI__SCAN_load ;
 void* stbi__convert_format (unsigned char*,int,int,int,int) ;
 void* stbi__convert_format16 (int *,int,int,int,int) ;
 void* stbi__errpuc (char*,char*) ;
 scalar_t__ stbi__parse_png_file (TYPE_3__*,int ,int) ;

__attribute__((used)) static void *stbi__do_png(stbi__png *p, int *x, int *y, int *n, int req_comp, stbi__result_info *ri)
{
   void *result=((void*)0);
   if (req_comp < 0 || req_comp > 4) return stbi__errpuc("bad req_comp", "Internal error");
   if (stbi__parse_png_file(p, STBI__SCAN_load, req_comp)) {
      if (p->depth < 8)
         ri->bits_per_channel = 8;
      else
         ri->bits_per_channel = p->depth;
      result = p->out;
      p->out = ((void*)0);
      if (req_comp && req_comp != p->s->img_out_n) {
         if (ri->bits_per_channel == 8)
            result = stbi__convert_format((unsigned char *) result, p->s->img_out_n, req_comp, p->s->img_x, p->s->img_y);
         else
            result = stbi__convert_format16((stbi__uint16 *) result, p->s->img_out_n, req_comp, p->s->img_x, p->s->img_y);
         p->s->img_out_n = req_comp;
         if (result == ((void*)0)) return result;
      }
      *x = p->s->img_x;
      *y = p->s->img_y;
      if (n) *n = p->s->img_n;
   }
   STBI_FREE(p->out); p->out = ((void*)0);
   STBI_FREE(p->expanded); p->expanded = ((void*)0);
   STBI_FREE(p->idata); p->idata = ((void*)0);

   return result;
}
