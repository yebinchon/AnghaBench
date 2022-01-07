
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct timeval {float tv_sec; float tv_usec; } ;
struct TYPE_6__ {size_t sector_size; } ;
struct TYPE_7__ {TYPE_1__ csd; } ;
typedef TYPE_2__ sdmmc_card_t ;
typedef int buffer ;


 int MALLOC_CAP_DMA ;
 int TEST_ESP_OK (int ) ;
 int check_buffer (size_t,int *,size_t) ;
 int fill_buffer (size_t,int *,size_t) ;
 int free (int *) ;
 int gettimeofday (struct timeval*,int *) ;
 int * heap_caps_malloc (size_t,int ) ;
 int memset (int *,int,size_t) ;
 int printf (char*,float,size_t,float,size_t) ;
 int sdmmc_read_sectors (TYPE_2__*,int *,size_t,size_t) ;
 int sdmmc_write_sectors (TYPE_2__*,int *,size_t,size_t) ;

__attribute__((used)) static void do_single_write_read_test(sdmmc_card_t* card,
        size_t start_block, size_t block_count, size_t alignment)
{
    size_t block_size = card->csd.sector_size;
    size_t total_size = block_size * block_count;
    printf(" %8d |  %3d  |   %d   |    %4.1f  ", start_block, block_count, alignment, total_size / 1024.0f);

    uint32_t* buffer = heap_caps_malloc(total_size + 4, MALLOC_CAP_DMA);
    size_t offset = alignment % 4;
    uint8_t* c_buffer = (uint8_t*) buffer + offset;
    fill_buffer(start_block, c_buffer, total_size / sizeof(buffer[0]));

    struct timeval t_start_wr;
    gettimeofday(&t_start_wr, ((void*)0));
    TEST_ESP_OK(sdmmc_write_sectors(card, c_buffer, start_block, block_count));
    struct timeval t_stop_wr;
    gettimeofday(&t_stop_wr, ((void*)0));
    float time_wr = 1e3f * (t_stop_wr.tv_sec - t_start_wr.tv_sec) + 1e-3f * (t_stop_wr.tv_usec - t_start_wr.tv_usec);

    memset(buffer, 0xbb, total_size + 4);

    struct timeval t_start_rd;
    gettimeofday(&t_start_rd, ((void*)0));
    TEST_ESP_OK(sdmmc_read_sectors(card, c_buffer, start_block, block_count));
    struct timeval t_stop_rd;
    gettimeofday(&t_stop_rd, ((void*)0));
    float time_rd = 1e3f * (t_stop_rd.tv_sec - t_start_rd.tv_sec) + 1e-3f * (t_stop_rd.tv_usec - t_start_rd.tv_usec);

    printf(" |   %6.2f    |      %5.2f      |    %6.2f     |     %5.2f\n",
            time_wr, total_size / (time_wr / 1000) / (1024 * 1024),
            time_rd, total_size / (time_rd / 1000) / (1024 * 1024));
    check_buffer(start_block, c_buffer, total_size / sizeof(buffer[0]));
    free(buffer);
}
