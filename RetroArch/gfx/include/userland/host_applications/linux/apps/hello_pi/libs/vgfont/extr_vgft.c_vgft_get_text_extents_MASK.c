#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VGfloat ;
struct TYPE_10__ {TYPE_3__* ft_face; } ;
typedef  TYPE_4__ VGFT_FONT_T ;
struct TYPE_9__ {TYPE_2__* size; } ;
struct TYPE_7__ {int /*<<< orphan*/  height; } ;
struct TYPE_8__ {TYPE_1__ metrics; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,scalar_t__*,scalar_t__*,char const*,int) ; 

void FUNC2(VGFT_FONT_T *font,
                           const char *text,
                           unsigned text_length,
                           VGfloat unused0, VGfloat unused1,
                           VGfloat *w, VGfloat *h) {
   int last_draw = 0;
   VGfloat max_x = 0;
   VGfloat y = 0;

   int i, last;
   for (i = 0, last = 0; !last; ++i) {
      last = !text[i] || (text_length && i==text_length);
      if ((text[i] == '\n') || last) {
         VGfloat x = 0;
         FUNC1(font, &x, &y, text + last_draw, i - last_draw);
         last_draw = i + 1;
         y -= FUNC0(font->ft_face->size->metrics.height);
         if (x > max_x) max_x = x;
      }
   }
   *w = max_x;
   *h = -y;
}