#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  volume; int /*<<< orphan*/  scanOffset; int /*<<< orphan*/  lba; int /*<<< orphan*/  index; int /*<<< orphan*/  latency; int /*<<< orphan*/  cycles; } ;

/* Variables and functions */
 TYPE_1__ cdd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

int FUNC1(uint8 *state)
{
  int bufferptr = 0;

  FUNC0(&cdd.cycles, sizeof(cdd.cycles));
  FUNC0(&cdd.latency, sizeof(cdd.latency));
  FUNC0(&cdd.index, sizeof(cdd.index));
  FUNC0(&cdd.lba, sizeof(cdd.lba));
  FUNC0(&cdd.scanOffset, sizeof(cdd.scanOffset));
  FUNC0(&cdd.volume, sizeof(cdd.volume));
  FUNC0(&cdd.status, sizeof(cdd.status));

  return bufferptr;
}