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
typedef  int u32 ;
struct dma_chan {int chcr; int sar; int dar; scalar_t__ tcr; } ;
typedef  int /*<<< orphan*/  SH2 ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(SH2 *sh2, struct dma_chan *chan)
{
  u32 size, d;

  size = (chan->chcr >> 10) & 3;
  switch (size) {
  case 0:
    d = FUNC2(chan->sar, sh2);
    FUNC5(chan->dar, d, sh2);
  case 1:
    d = FUNC0(chan->sar, sh2);
    FUNC3(chan->dar, d, sh2);
    break;
  case 2:
    d = FUNC1(chan->sar, sh2);
    FUNC4(chan->dar, d, sh2);
    break;
  case 3:
    d = FUNC1(chan->sar + 0x00, sh2);
    FUNC4(chan->dar + 0x00, d, sh2);
    d = FUNC1(chan->sar + 0x04, sh2);
    FUNC4(chan->dar + 0x04, d, sh2);
    d = FUNC1(chan->sar + 0x08, sh2);
    FUNC4(chan->dar + 0x08, d, sh2);
    d = FUNC1(chan->sar + 0x0c, sh2);
    FUNC4(chan->dar + 0x0c, d, sh2);
    chan->sar += 16; // always?
    if (chan->chcr & (1 << 15))
      chan->dar -= 16;
    if (chan->chcr & (1 << 14))
      chan->dar += 16;
    chan->tcr -= 4;
    return;
  }
  chan->tcr--;

  size = 1 << size;
  if (chan->chcr & (1 << 15))
    chan->dar -= size;
  if (chan->chcr & (1 << 14))
    chan->dar += size;
  if (chan->chcr & (1 << 13))
    chan->sar -= size;
  if (chan->chcr & (1 << 12))
    chan->sar += size;
}