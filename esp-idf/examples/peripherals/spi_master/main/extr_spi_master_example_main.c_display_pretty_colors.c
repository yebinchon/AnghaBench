
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int spi_device_handle_t ;


 int MALLOC_CAP_DMA ;
 int PARALLEL_LINES ;
 int assert (int ) ;
 int * heap_caps_malloc (int,int ) ;
 int pretty_effect_calc_lines (int *,int,int,int) ;
 int send_line_finish (int ) ;
 int send_lines (int ,int,int *) ;

__attribute__((used)) static void display_pretty_colors(spi_device_handle_t spi)
{
    uint16_t *lines[2];

    for (int i=0; i<2; i++) {
        lines[i]=heap_caps_malloc(320*PARALLEL_LINES*sizeof(uint16_t), MALLOC_CAP_DMA);
        assert(lines[i]!=((void*)0));
    }
    int frame=0;

    int sending_line=-1;
    int calc_line=0;

    while(1) {
        frame++;
        for (int y=0; y<240; y+=PARALLEL_LINES) {

            pretty_effect_calc_lines(lines[calc_line], y, frame, PARALLEL_LINES);

            if (sending_line!=-1) send_line_finish(spi);

            sending_line=calc_line;
            calc_line=(calc_line==1)?0:1;

            send_lines(spi, y, lines[sending_line]);



        }
    }
}
