
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* avf; int current_segment_final_filename_fmt; } ;
typedef TYPE_2__ VariantStream ;
struct TYPE_9__ {int flags; } ;
struct TYPE_7__ {int url; } ;
typedef TYPE_3__ HLSContext ;


 int HLS_SECOND_LEVEL_SEGMENT_DURATION ;
 int HLS_SECOND_LEVEL_SEGMENT_SIZE ;
 int ff_rename (char*,int ,TYPE_3__*) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void sls_flag_file_rename(HLSContext *hls, VariantStream *vs, char *old_filename) {
    if ((hls->flags & (HLS_SECOND_LEVEL_SEGMENT_SIZE | HLS_SECOND_LEVEL_SEGMENT_DURATION)) &&
        strlen(vs->current_segment_final_filename_fmt)) {
        ff_rename(old_filename, vs->avf->url, hls);
    }
}
