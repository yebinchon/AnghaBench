
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PosPairCode {int score; } ;


 int FFDIFFSIGN (int ,int ) ;

__attribute__((used)) static int cmp_scores(const void *a, const void *b)
{
    const struct PosPairCode *pair1 = a;
    const struct PosPairCode *pair2 = b;
    return FFDIFFSIGN(pair1->score, pair2->score);
}
