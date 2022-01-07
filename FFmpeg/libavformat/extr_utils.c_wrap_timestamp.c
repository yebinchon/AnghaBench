
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ pts_wrap_behavior; scalar_t__ pts_wrap_reference; unsigned long long pts_wrap_bits; } ;
typedef TYPE_1__ AVStream ;


 scalar_t__ AV_NOPTS_VALUE ;
 scalar_t__ AV_PTS_WRAP_ADD_OFFSET ;
 scalar_t__ AV_PTS_WRAP_IGNORE ;
 scalar_t__ AV_PTS_WRAP_SUB_OFFSET ;

__attribute__((used)) static int64_t wrap_timestamp(const AVStream *st, int64_t timestamp)
{
    if (st->pts_wrap_behavior != AV_PTS_WRAP_IGNORE &&
        st->pts_wrap_reference != AV_NOPTS_VALUE && timestamp != AV_NOPTS_VALUE) {
        if (st->pts_wrap_behavior == AV_PTS_WRAP_ADD_OFFSET &&
            timestamp < st->pts_wrap_reference)
            return timestamp + (1ULL << st->pts_wrap_bits);
        else if (st->pts_wrap_behavior == AV_PTS_WRAP_SUB_OFFSET &&
            timestamp >= st->pts_wrap_reference)
            return timestamp - (1ULL << st->pts_wrap_bits);
    }
    return timestamp;
}
