
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sequence {int length; struct sequence* samples; struct sequence* label; } ;


 int zfree (struct sequence*) ;

void freeSparklineSequence(struct sequence *seq) {
    int j;

    for (j = 0; j < seq->length; j++)
        zfree(seq->samples[j].label);
    zfree(seq->samples);
    zfree(seq);
}
