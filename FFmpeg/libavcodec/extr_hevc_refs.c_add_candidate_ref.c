
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* ref; } ;
struct TYPE_12__ {int poc; } ;
struct TYPE_11__ {size_t nb_refs; TYPE_2__** ref; int * list; } ;
typedef TYPE_1__ RefPicList ;
typedef TYPE_2__ HEVCFrame ;
typedef TYPE_3__ HEVCContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int ENOMEM ;
 size_t HEVC_MAX_REFS ;
 TYPE_2__* find_ref_idx (TYPE_3__*,int) ;
 TYPE_2__* generate_missing_ref (TYPE_3__*,int) ;
 int mark_ref (TYPE_2__*,int) ;

__attribute__((used)) static int add_candidate_ref(HEVCContext *s, RefPicList *list,
                             int poc, int ref_flag)
{
    HEVCFrame *ref = find_ref_idx(s, poc);

    if (ref == s->ref || list->nb_refs >= HEVC_MAX_REFS)
        return AVERROR_INVALIDDATA;

    if (!ref) {
        ref = generate_missing_ref(s, poc);
        if (!ref)
            return AVERROR(ENOMEM);
    }

    list->list[list->nb_refs] = ref->poc;
    list->ref[list->nb_refs] = ref;
    list->nb_refs++;

    mark_ref(ref, ref_flag);
    return 0;
}
