
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double mux_max_delay; int accurate_seek; int chapters_input_file; int limit_filesize; void* recording_time; void* start_time_eof; void* start_time; void* stop_time; } ;
typedef TYPE_1__ OptionsContext ;


 void* AV_NOPTS_VALUE ;
 void* INT64_MAX ;
 int INT_MAX ;
 int UINT64_MAX ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void init_options(OptionsContext *o)
{
    memset(o, 0, sizeof(*o));

    o->stop_time = INT64_MAX;
    o->mux_max_delay = 0.7;
    o->start_time = AV_NOPTS_VALUE;
    o->start_time_eof = AV_NOPTS_VALUE;
    o->recording_time = INT64_MAX;
    o->limit_filesize = UINT64_MAX;
    o->chapters_input_file = INT_MAX;
    o->accurate_seek = 1;
}
