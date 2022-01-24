#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ stbi__uint32 ;
struct TYPE_14__ {scalar_t__ progressive; TYPE_8__* s; void* marker; scalar_t__ restart_interval; TYPE_1__* img_comp; } ;
typedef  TYPE_2__ stbi__jpeg ;
struct TYPE_15__ {scalar_t__ img_y; } ;
struct TYPE_13__ {int /*<<< orphan*/ * raw_coeff; int /*<<< orphan*/ * raw_data; } ;

/* Variables and functions */
 void* STBI__MARKER_none ; 
 int /*<<< orphan*/  STBI__SCAN_load ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,char*) ; 
 void* FUNC6 (TYPE_8__*) ; 
 void* FUNC7 (TYPE_8__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC13(stbi__jpeg *j)
{
   int m;
   for (m = 0; m < 4; m++) {
      j->img_comp[m].raw_data = NULL;
      j->img_comp[m].raw_coeff = NULL;
   }
   j->restart_interval = 0;
   if (!FUNC4(j, STBI__SCAN_load)) return 0;
   m = FUNC8(j);
   while (!FUNC1(m)) {
      if (FUNC2(m)) {
         if (!FUNC12(j)) return 0;
         if (!FUNC10(j)) return 0;
         if (j->marker == STBI__MARKER_none ) {
            // handle 0s at the end of image data from IP Kamera 9060
            while (!FUNC3(j->s)) {
               int x = FUNC7(j->s);
               if (x == 255) {
                  j->marker = FUNC7(j->s);
                  break;
               }
            }
            // if we reach eof without hitting a marker, stbi__get_marker() below will fail and we'll eventually return 0
         }
      } else if (FUNC0(m)) {
         int Ld = FUNC6(j->s);
         stbi__uint32 NL = FUNC6(j->s);
         if (Ld != 4) return FUNC5("bad DNL len", "Corrupt JPEG");
         if (NL != j->s->img_y) return FUNC5("bad DNL height", "Corrupt JPEG");
      } else {
         if (!FUNC11(j, m)) return 0;
      }
      m = FUNC8(j);
   }
   if (j->progressive)
      FUNC9(j);
   return 1;
}