#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int rows; int image_height; int cols; int image_width; int block_width; int block_height; int blocks_size; int palette_type; int /*<<< orphan*/  avctx; int /*<<< orphan*/  palette; scalar_t__ use_custom_palette; scalar_t__ use15_7; int /*<<< orphan*/  blockbuffer; int /*<<< orphan*/  blockbuffer_size; int /*<<< orphan*/  keybuffer; void* key_blocks; int /*<<< orphan*/  databuffer; int /*<<< orphan*/  encbuffer; void* frame_blocks; } ;
typedef  TYPE_1__ FlashSV2Context ;
typedef  int /*<<< orphan*/  Block ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (void*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(FlashSV2Context * s, const uint8_t * image,
                                   int stride)
{
    int update_palette = 0;
    int res;
    int block_width  = FUNC8 (s);
    int block_height = FUNC7(s);

    s->rows = (s->image_height + block_height - 1) / block_height;
    s->cols = (s->image_width  + block_width  - 1) / block_width;

    if (block_width != s->block_width || block_height != s->block_height) {
        s->block_width  = block_width;
        s->block_height = block_height;
        if (s->rows * s->cols > s->blocks_size / sizeof(Block)) {
            s->frame_blocks = FUNC3(s->frame_blocks, s->rows, s->cols * sizeof(Block));
            s->key_blocks = FUNC3(s->key_blocks, s->cols, s->rows * sizeof(Block));
            if (!s->frame_blocks || !s->key_blocks) {
                FUNC2(s->avctx, AV_LOG_ERROR, "Memory allocation failed.\n");
                return -1;
            }
            s->blocks_size = s->rows * s->cols * sizeof(Block);
        }
        FUNC6(s, s->frame_blocks, s->encbuffer, s->databuffer);
        FUNC6(s, s->key_blocks, s->keybuffer, 0);

        FUNC1(&s->blockbuffer, &s->blockbuffer_size, block_width * block_height * 6);
        if (!s->blockbuffer) {
            FUNC2(s->avctx, AV_LOG_ERROR, "Could not allocate block buffer.\n");
            return FUNC0(ENOMEM);
        }
    }

    s->use15_7 = FUNC9(s);
    if (s->use15_7) {
        if ((s->use_custom_palette && s->palette_type != 1) || update_palette) {
            res = FUNC5(&s->palette, image, s->image_width, s->image_height, stride);
            if (res)
                return res;
            s->palette_type = 1;
            FUNC2(s->avctx, AV_LOG_DEBUG, "Generated optimum palette\n");
        } else if (!s->use_custom_palette && s->palette_type != 0) {
            res = FUNC4(&s->palette);
            if (res)
                return res;
            s->palette_type = 0;
            FUNC2(s->avctx, AV_LOG_DEBUG, "Generated default palette\n");
        }
    }


    FUNC10(s);

    return 0;
}