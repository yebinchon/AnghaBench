
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ word1; scalar_t__ word2; scalar_t__ val; } ;
typedef int FILE ;
typedef TYPE_1__ CRECID ;
typedef int CREC ;


 int fwrite (TYPE_1__*,int,int,int *) ;

int merge_write(CRECID new, CRECID *old, FILE *fout) {
    if (new.word1 == old->word1 && new.word2 == old->word2) {
        old->val += new.val;
        return 0;
    }
    fwrite(old, sizeof(CREC), 1, fout);
    *old = new;
    return 1;
}
