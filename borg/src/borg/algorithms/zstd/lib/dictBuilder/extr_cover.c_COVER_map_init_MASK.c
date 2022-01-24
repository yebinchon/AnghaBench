#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int U32 ;
struct TYPE_4__ {int sizeLog; int size; int sizeMask; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ COVER_map_t ;
typedef  int /*<<< orphan*/  COVER_map_pair_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(COVER_map_t *map, U32 size) {
  map->sizeLog = FUNC1(size) + 2;
  map->size = (U32)1 << map->sizeLog;
  map->sizeMask = map->size - 1;
  map->data = (COVER_map_pair_t *)FUNC2(map->size * sizeof(COVER_map_pair_t));
  if (!map->data) {
    map->sizeLog = 0;
    map->size = 0;
    return 0;
  }
  FUNC0(map);
  return 1;
}