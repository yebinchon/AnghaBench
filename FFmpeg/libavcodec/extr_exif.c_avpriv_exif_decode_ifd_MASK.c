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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (void*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ **) ; 

int FUNC2(void *logctx, const uint8_t *buf, int size,
                           int le, int depth, AVDictionary **metadata)
{
    GetByteContext gb;

    FUNC0(&gb, buf, size);

    return FUNC1(logctx, &gb, le, depth, metadata);
}