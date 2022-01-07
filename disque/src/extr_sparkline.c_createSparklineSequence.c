
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sequence {int * samples; scalar_t__ length; } ;


 struct sequence* zmalloc (int) ;

struct sequence *createSparklineSequence(void) {
    struct sequence *seq = zmalloc(sizeof(*seq));
    seq->length = 0;
    seq->samples = ((void*)0);
    return seq;
}
