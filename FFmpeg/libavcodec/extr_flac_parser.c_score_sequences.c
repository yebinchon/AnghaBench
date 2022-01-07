
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int max_score; struct TYPE_7__* next; } ;
struct TYPE_6__ {TYPE_2__* best_header; TYPE_2__* headers; } ;
typedef TYPE_1__ FLACParseContext ;
typedef TYPE_2__ FLACHeaderMarker ;


 int FLAC_HEADER_NOT_SCORED_YET ;
 int score_header (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void score_sequences(FLACParseContext *fpc)
{
    FLACHeaderMarker *curr;
    int best_score = 0;

    for (curr = fpc->headers; curr; curr = curr->next)
        curr->max_score = FLAC_HEADER_NOT_SCORED_YET;


    for (curr = fpc->headers; curr; curr = curr->next) {
        if (score_header(fpc, curr) > best_score) {
            fpc->best_header = curr;
            best_score = curr->max_score;
        }
    }
}
