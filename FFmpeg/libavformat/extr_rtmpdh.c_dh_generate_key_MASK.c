#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * pub_key; int /*<<< orphan*/  p; int /*<<< orphan*/ * priv_key; int /*<<< orphan*/  g; } ;
typedef  TYPE_1__ FF_DH ;
typedef  int /*<<< orphan*/ * FFBigNum ;

/* Variables and functions */
 int MAX_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static FFBigNum FUNC5(FF_DH *dh)
{
    int num_bytes;

    num_bytes = FUNC3(dh->p) - 1;
    if (num_bytes <= 0 || num_bytes > MAX_BYTES)
        return NULL;

    FUNC2(dh->priv_key);
    if (!dh->priv_key)
        return NULL;
    FUNC4(dh->priv_key, 8 * num_bytes);

    FUNC2(dh->pub_key);
    if (!dh->pub_key) {
        FUNC0(dh->priv_key);
        return NULL;
    }

    if (FUNC1(dh->pub_key, dh->g, dh->priv_key, dh->p) < 0)
        return NULL;

    return dh->pub_key;
}