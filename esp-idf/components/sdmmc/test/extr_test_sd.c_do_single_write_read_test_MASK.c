#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct timeval {float tv_sec; float tv_usec; } ;
struct TYPE_6__ {size_t sector_size; } ;
struct TYPE_7__ {TYPE_1__ csd; } ;
typedef  TYPE_2__ sdmmc_card_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  MALLOC_CAP_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,float,size_t,float,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,size_t,size_t) ; 

__attribute__((used)) static void FUNC10(sdmmc_card_t* card,
        size_t start_block, size_t block_count, size_t alignment)
{
    size_t block_size = card->csd.sector_size;
    size_t total_size = block_size * block_count;
    FUNC7(" %8d |  %3d  |   %d   |    %4.1f  ", start_block, block_count, alignment, total_size / 1024.0f);

    uint32_t* buffer = FUNC5(total_size + 4, MALLOC_CAP_DMA);
    size_t offset = alignment % 4;
    uint8_t* c_buffer = (uint8_t*) buffer + offset;
    FUNC2(start_block, c_buffer, total_size / sizeof(buffer[0]));

    struct timeval t_start_wr;
    FUNC4(&t_start_wr, NULL);
    FUNC0(FUNC9(card, c_buffer, start_block, block_count));
    struct timeval t_stop_wr;
    FUNC4(&t_stop_wr, NULL);
    float time_wr = 1e3f * (t_stop_wr.tv_sec - t_start_wr.tv_sec) + 1e-3f * (t_stop_wr.tv_usec - t_start_wr.tv_usec);

    FUNC6(buffer, 0xbb, total_size + 4);

    struct timeval t_start_rd;
    FUNC4(&t_start_rd, NULL);
    FUNC0(FUNC8(card, c_buffer, start_block, block_count));
    struct timeval t_stop_rd;
    FUNC4(&t_stop_rd, NULL);
    float time_rd = 1e3f * (t_stop_rd.tv_sec - t_start_rd.tv_sec) + 1e-3f * (t_stop_rd.tv_usec - t_start_rd.tv_usec);

    FUNC7(" |   %6.2f    |      %5.2f      |    %6.2f     |     %5.2f\n",
            time_wr, total_size / (time_wr / 1000) / (1024 * 1024),
            time_rd, total_size / (time_rd / 1000) / (1024 * 1024));
    FUNC1(start_block, c_buffer, total_size / sizeof(buffer[0]));
    FUNC3(buffer);
}