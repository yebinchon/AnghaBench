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
struct TYPE_3__ {struct TYPE_3__* data; struct TYPE_3__* owner; } ;
typedef  TYPE_1__ ID3v2ExtraMetaPRIV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 

__attribute__((used)) static void FUNC1(void *obj)
{
    ID3v2ExtraMetaPRIV *priv = obj;
    FUNC0(&priv->owner);
    FUNC0(&priv->data);
    FUNC0(&priv);
}