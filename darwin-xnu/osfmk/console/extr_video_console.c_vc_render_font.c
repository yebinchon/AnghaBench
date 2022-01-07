
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spl_t ;


 scalar_t__ FALSE ;
 short ISO_CHAR_HEIGHT ;
 int ISO_CHAR_MAX ;
 int ISO_CHAR_MIN ;
 short ISO_CHAR_WIDTH ;
 int VCPUTC_LOCK_LOCK () ;
 int VCPUTC_LOCK_UNLOCK () ;
 scalar_t__ kalloc (unsigned int) ;
 int kfree (unsigned char*,unsigned int) ;
 int splhigh () ;
 int splx (int ) ;
 int vc_render_char (int,unsigned char*,short) ;
 int vc_rendered_char_size ;
 unsigned char* vc_rendered_font ;
 unsigned int vc_rendered_font_size ;
 scalar_t__ vm_initialized ;

__attribute__((used)) static void
vc_render_font(short newdepth)
{
 static short olddepth = 0;

 int charindex;
 unsigned char *rendered_font;
 unsigned int rendered_font_size;
 int rendered_char_size;
 spl_t s;

 if (vm_initialized == FALSE) {
  return;
 }
 if (olddepth == newdepth && vc_rendered_font) {
  return;
 }

 s = splhigh();
 VCPUTC_LOCK_LOCK();

 rendered_font = vc_rendered_font;
 rendered_font_size = vc_rendered_font_size;
 rendered_char_size = vc_rendered_char_size;

 vc_rendered_font = ((void*)0);
 vc_rendered_font_size = 0;
 vc_rendered_char_size = 0;

 VCPUTC_LOCK_UNLOCK();
 splx(s);

 if (rendered_font) {
  kfree(rendered_font, rendered_font_size);
  rendered_font = ((void*)0);
 }

 if (newdepth) {
  rendered_char_size = ISO_CHAR_HEIGHT * (((newdepth + 7) / 8) * ISO_CHAR_WIDTH);
  rendered_font_size = (ISO_CHAR_MAX-ISO_CHAR_MIN+1) * rendered_char_size;
  rendered_font = (unsigned char *) kalloc(rendered_font_size);
 }

 if (rendered_font == ((void*)0)) {
  return;
 }

 for (charindex = ISO_CHAR_MIN; charindex <= ISO_CHAR_MAX; charindex++) {
  vc_render_char(charindex, rendered_font + (charindex * rendered_char_size), newdepth);
 }

 olddepth = newdepth;

 s = splhigh();
 VCPUTC_LOCK_LOCK();

 vc_rendered_font = rendered_font;
 vc_rendered_font_size = rendered_font_size;
 vc_rendered_char_size = rendered_char_size;

 VCPUTC_LOCK_UNLOCK();
 splx(s);
}
