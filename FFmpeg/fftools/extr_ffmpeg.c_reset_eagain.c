
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ eagain; } ;
struct TYPE_3__ {scalar_t__ unavailable; } ;


 TYPE_2__** input_files ;
 int nb_input_files ;
 int nb_output_streams ;
 TYPE_1__** output_streams ;

__attribute__((used)) static void reset_eagain(void)
{
    int i;
    for (i = 0; i < nb_input_files; i++)
        input_files[i]->eagain = 0;
    for (i = 0; i < nb_output_streams; i++)
        output_streams[i]->unavailable = 0;
}
