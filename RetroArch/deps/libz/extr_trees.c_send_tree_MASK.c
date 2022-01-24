#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  bl_tree; } ;
typedef  TYPE_1__ deflate_state ;
struct TYPE_8__ {int Len; } ;
typedef  TYPE_2__ ct_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int REPZ_11_138 ; 
 int REPZ_3_10 ; 
 int REP_3_6 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (deflate_state *s, ct_data *tree, int max_code)
{
   int n;                     /* iterates over all tree elements */
   int prevlen = -1;          /* last emitted length */
   int curlen;                /* length of current code */
   int nextlen = tree[0].Len; /* length of next code */
   int count = 0;             /* repeat count of the current code */
   int max_count = 7;         /* max repeat count */
   int min_count = 4;         /* min repeat count */

   /* tree[max_code+1].Len = -1; */  /* guard already set */
   if (nextlen == 0) max_count = 138, min_count = 3;

   for (n = 0; n <= max_code; n++) {
      curlen = nextlen; nextlen = tree[n+1].Len;
      if (++count < max_count && curlen == nextlen) {
         continue;
      } else if (count < min_count) {
         do { FUNC2(s, curlen, s->bl_tree); } while (--count != 0);

      } else if (curlen != 0) {
         if (curlen != prevlen) {
            FUNC2(s, curlen, s->bl_tree); count--;
         }
         FUNC0(count >= 3 && count <= 6, " 3_6?");
         FUNC2(s, REP_3_6, s->bl_tree); FUNC1(s, count-3, 2);

      } else if (count <= 10) {
         FUNC2(s, REPZ_3_10, s->bl_tree); FUNC1(s, count-3, 3);

      } else {
         FUNC2(s, REPZ_11_138, s->bl_tree); FUNC1(s, count-11, 7);
      }
      count = 0; prevlen = curlen;
      if (nextlen == 0) {
         max_count = 138, min_count = 3;
      } else if (curlen == nextlen) {
         max_count = 6, min_count = 3;
      } else {
         max_count = 7, min_count = 4;
      }
   }
}