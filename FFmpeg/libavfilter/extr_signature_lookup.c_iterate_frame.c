
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* prev; struct TYPE_4__* next; } ;
typedef TYPE_1__ FineSignature ;


 int DIR_NEXT ;
 int DIR_NEXT_END ;
 int DIR_PREV ;
 int DIR_PREV_END ;

__attribute__((used)) static int iterate_frame(double frr, FineSignature **a, FineSignature **b, int fcount, int *bcount, int dir)
{
    int step;


    step = ((int) 0.5 + fcount * frr)
          -((int) 0.5 + (fcount-1) * frr);

    if (dir == DIR_NEXT) {
        if (frr >= 1.0) {
            if ((*a)->next) {
                *a = (*a)->next;
            } else {
                return DIR_NEXT_END;
            }

            if (step == 1) {
                if ((*b)->next) {
                    *b = (*b)->next;
                    (*bcount)++;
                } else {
                    return DIR_NEXT_END;
                }
            } else {
                if ((*b)->next && (*b)->next->next) {
                    *b = (*b)->next->next;
                    (*bcount)++;
                } else {
                    return DIR_NEXT_END;
                }
            }
        } else {
            if ((*b)->next) {
                *b = (*b)->next;
                (*bcount)++;
            } else {
                return DIR_NEXT_END;
            }

            if (step == 1) {
                if ((*a)->next) {
                    *a = (*a)->next;
                } else {
                    return DIR_NEXT_END;
                }
            } else {
                if ((*a)->next && (*a)->next->next) {
                    *a = (*a)->next->next;
                } else {
                    return DIR_NEXT_END;
                }
            }
        }
        return DIR_NEXT;
    } else {
        if (frr >= 1.0) {
            if ((*a)->prev) {
                *a = (*a)->prev;
            } else {
                return DIR_PREV_END;
            }

            if (step == 1) {
                if ((*b)->prev) {
                    *b = (*b)->prev;
                    (*bcount)++;
                } else {
                    return DIR_PREV_END;
                }
            } else {
                if ((*b)->prev && (*b)->prev->prev) {
                    *b = (*b)->prev->prev;
                    (*bcount)++;
                } else {
                    return DIR_PREV_END;
                }
            }
        } else {
            if ((*b)->prev) {
                *b = (*b)->prev;
                (*bcount)++;
            } else {
                return DIR_PREV_END;
            }

            if (step == 1) {
                if ((*a)->prev) {
                    *a = (*a)->prev;
                } else {
                    return DIR_PREV_END;
                }
            } else {
                if ((*a)->prev && (*a)->prev->prev) {
                    *a = (*a)->prev->prev;
                } else {
                    return DIR_PREV_END;
                }
            }
        }
        return DIR_PREV;
    }
}
