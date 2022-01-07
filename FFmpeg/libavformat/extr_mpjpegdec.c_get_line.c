
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int error; scalar_t__ eof_reached; } ;
typedef TYPE_1__ AVIOContext ;


 int AVERROR_EOF ;
 int ff_get_line (TYPE_1__*,char*,int) ;
 int trim_right (char*) ;

__attribute__((used)) static int get_line(AVIOContext *pb, char *line, int line_size)
{
    ff_get_line(pb, line, line_size);

    if (pb->error)
        return pb->error;

    if (pb->eof_reached)
        return AVERROR_EOF;

    trim_right(line);
    return 0;
}
