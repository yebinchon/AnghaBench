#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ProgressData {int width; size_t bar; int tick; size_t barmove; int /*<<< orphan*/  out; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,char*) ; 
 int* sinus ; 

__attribute__((used)) static void FUNC3(struct ProgressData *bar, bool moved)
{
  char buf[256];
  int pos;
  int check = bar->width - 2;

  FUNC2(buf, sizeof(buf), "%*s\r", bar->width-1, " ");
  FUNC1(&buf[bar->bar], "-=O=-", 5);

  pos = sinus[bar->tick%200] / (10000 / check);
  buf[pos] = '#';
  pos = sinus[(bar->tick + 5)%200] / (10000 / check);
  buf[pos] = '#';
  pos = sinus[(bar->tick + 10)%200] / (10000 / check);
  buf[pos] = '#';
  pos = sinus[(bar->tick + 15)%200] / (10000 / check);
  buf[pos] = '#';

  FUNC0(buf, bar->out);
  bar->tick += 2;
  if(bar->tick >= 200)
    bar->tick -= 200;

  bar->bar += (moved?bar->barmove:0);
  if(bar->bar >= (bar->width - 6)) {
    bar->barmove = -1;
    bar->bar = bar->width - 6;
  }
  else if(bar->bar < 0) {
    bar->barmove = 1;
    bar->bar = 0;
  }
}