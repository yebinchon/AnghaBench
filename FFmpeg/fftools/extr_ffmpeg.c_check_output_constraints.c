
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int ist_index; } ;
struct TYPE_12__ {size_t file_index; scalar_t__ pts; TYPE_1__* st; } ;
struct TYPE_11__ {scalar_t__ start_time; } ;
struct TYPE_10__ {size_t file_index; int source_index; scalar_t__ finished; } ;
struct TYPE_9__ {int index; } ;
typedef TYPE_2__ OutputStream ;
typedef TYPE_3__ OutputFile ;
typedef TYPE_4__ InputStream ;


 scalar_t__ AV_NOPTS_VALUE ;
 TYPE_6__** input_files ;
 TYPE_3__** output_files ;

__attribute__((used)) static int check_output_constraints(InputStream *ist, OutputStream *ost)
{
    OutputFile *of = output_files[ost->file_index];
    int ist_index = input_files[ist->file_index]->ist_index + ist->st->index;

    if (ost->source_index != ist_index)
        return 0;

    if (ost->finished)
        return 0;

    if (of->start_time != AV_NOPTS_VALUE && ist->pts < of->start_time)
        return 0;

    return 1;
}
