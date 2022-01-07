
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_8__ {TYPE_1__* frame; } ;
struct TYPE_7__ {size_t queued; size_t total_frames_head; size_t total_frames_tail; scalar_t__ total_samples_head; scalar_t__ total_samples_tail; } ;
struct TYPE_6__ {scalar_t__ nb_samples; } ;
typedef TYPE_2__ FFFrameQueue ;


 int av_assert0 (int) ;
 TYPE_4__* bucket (TYPE_2__*,size_t) ;

__attribute__((used)) static void check_consistency(FFFrameQueue *fq)
{
}
