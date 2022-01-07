
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int flags; } ;
typedef int MOVTrack ;
typedef TYPE_1__ MOVIentry ;


 int MOV_FRAG_SAMPLE_FLAG_DEPENDS_NO ;
 int MOV_FRAG_SAMPLE_FLAG_DEPENDS_YES ;
 int MOV_FRAG_SAMPLE_FLAG_IS_NON_SYNC ;
 int MOV_SYNC_SAMPLE ;

__attribute__((used)) static uint32_t get_sample_flags(MOVTrack *track, MOVIentry *entry)
{
    return entry->flags & MOV_SYNC_SAMPLE ? MOV_FRAG_SAMPLE_FLAG_DEPENDS_NO :
           (MOV_FRAG_SAMPLE_FLAG_DEPENDS_YES | MOV_FRAG_SAMPLE_FLAG_IS_NON_SYNC);
}
