#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  vlc; } ;
struct TYPE_5__ {scalar_t__ role; int nb_huffman_groups; TYPE_4__* huffman_groups; int /*<<< orphan*/  frame; int /*<<< orphan*/  is_alpha_primary; TYPE_4__* color_cache; } ;
typedef  TYPE_1__ ImageContext ;

/* Variables and functions */
 int HUFFMAN_CODES_PER_META_CODE ; 
 scalar_t__ IMAGE_ROLE_ARGB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(ImageContext *img)
{
    int i, j;

    FUNC1(img->color_cache);
    if (img->role != IMAGE_ROLE_ARGB && !img->is_alpha_primary)
        FUNC0(&img->frame);
    if (img->huffman_groups) {
        for (i = 0; i < img->nb_huffman_groups; i++) {
            for (j = 0; j < HUFFMAN_CODES_PER_META_CODE; j++)
                FUNC2(&img->huffman_groups[i * HUFFMAN_CODES_PER_META_CODE + j].vlc);
        }
        FUNC1(img->huffman_groups);
    }
    FUNC3(img, 0, sizeof(*img));
}