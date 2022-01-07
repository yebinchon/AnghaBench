
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVIOContext ;


 int AV_LOG_FATAL ;
 int av_log (int *,int ,char*) ;
 int avio_close_dyn_buf (int *,int **) ;
 scalar_t__ avio_open_dyn_buf (int **) ;
 char avio_r8 (int *) ;
 int avio_w8 (int *,char) ;
 int exit_program (int) ;

__attribute__((used)) static uint8_t *get_line(AVIOContext *s)
{
    AVIOContext *line;
    uint8_t *buf;
    char c;

    if (avio_open_dyn_buf(&line) < 0) {
        av_log(((void*)0), AV_LOG_FATAL, "Could not alloc buffer for reading preset.\n");
        exit_program(1);
    }

    while ((c = avio_r8(s)) && c != '\n')
        avio_w8(line, c);
    avio_w8(line, 0);
    avio_close_dyn_buf(line, &buf);

    return buf;
}
