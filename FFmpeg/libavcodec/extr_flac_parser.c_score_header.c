
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int max_score; scalar_t__* link_penalty; struct TYPE_10__* next; struct TYPE_10__* best_child; int fi; } ;
struct TYPE_9__ {int last_fi; scalar_t__ last_fi_valid; } ;
typedef TYPE_1__ FLACParseContext ;
typedef TYPE_2__ FLACHeaderMarker ;


 int AV_LOG_DEBUG ;
 int FLAC_HEADER_BASE_SCORE ;
 scalar_t__ FLAC_HEADER_NOT_PENALIZED_YET ;
 int FLAC_HEADER_NOT_SCORED_YET ;
 int FLAC_MAX_SEQUENTIAL_HEADERS ;
 scalar_t__ check_header_fi_mismatch (TYPE_1__*,int *,int *,int ) ;
 scalar_t__ check_header_mismatch (TYPE_1__*,TYPE_2__*,TYPE_2__*,int ) ;

__attribute__((used)) static int score_header(FLACParseContext *fpc, FLACHeaderMarker *header)
{
    FLACHeaderMarker *child;
    int dist = 0;
    int child_score;
    int base_score = FLAC_HEADER_BASE_SCORE;
    if (header->max_score != FLAC_HEADER_NOT_SCORED_YET)
        return header->max_score;


    if (fpc->last_fi_valid) {

        base_score -= check_header_fi_mismatch(fpc, &fpc->last_fi, &header->fi,
                                               AV_LOG_DEBUG);
    }

    header->max_score = base_score;


    child = header->next;
    for (dist = 0; dist < FLAC_MAX_SEQUENTIAL_HEADERS && child; dist++) {


        if (header->link_penalty[dist] == FLAC_HEADER_NOT_PENALIZED_YET) {
            header->link_penalty[dist] = check_header_mismatch(fpc, header,
                                                               child, AV_LOG_DEBUG);
        }
        child_score = score_header(fpc, child) - header->link_penalty[dist];

        if (FLAC_HEADER_BASE_SCORE + child_score > header->max_score) {

            header->best_child = child;
            header->max_score = base_score + child_score;
        }
        child = child->next;
    }

    return header->max_score;
}
