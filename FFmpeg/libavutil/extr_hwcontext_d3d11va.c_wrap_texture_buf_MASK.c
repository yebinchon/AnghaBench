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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  desc ;
struct TYPE_4__ {int index; int /*<<< orphan*/ * texture; } ;
typedef  int /*<<< orphan*/  ID3D11Texture2D ;
typedef  TYPE_1__ AVD3D11FrameDescriptor ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  free_texture ; 

__attribute__((used)) static AVBufferRef *FUNC4(ID3D11Texture2D *tex, int index)
{
    AVBufferRef *buf;
    AVD3D11FrameDescriptor *desc = FUNC3(sizeof(*desc));
    if (!desc) {
        FUNC0(tex);
        return NULL;
    }

    desc->texture = tex;
    desc->index   = index;

    buf = FUNC1((uint8_t *)desc, sizeof(desc), free_texture, tex, 0);
    if (!buf) {
        FUNC0(tex);
        FUNC2(desc);
        return NULL;
    }

    return buf;
}