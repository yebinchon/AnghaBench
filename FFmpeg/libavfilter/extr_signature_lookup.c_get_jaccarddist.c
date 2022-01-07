
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * data; } ;
struct TYPE_6__ {int thworddist; int thcomposdist; } ;
typedef TYPE_1__ SignatureContext ;
typedef TYPE_2__ CoarseSignature ;


 int intersection_word (int ,int ) ;
 int union_word (int ,int ) ;

__attribute__((used)) static int get_jaccarddist(SignatureContext *sc, CoarseSignature *first, CoarseSignature *second)
{
    int jaccarddist, i, composdist = 0, cwthcount = 0;
    for (i = 0; i < 5; i++) {
        if ((jaccarddist = intersection_word(first->data[i], second->data[i])) > 0) {
            jaccarddist /= union_word(first->data[i], second->data[i]);
        }
        if (jaccarddist >= sc->thworddist) {
            if (++cwthcount > 2) {

                return 0;
            }
        }
        composdist += jaccarddist;
        if (composdist > sc->thcomposdist) {
            return 0;
        }
    }
    return 1;
}
