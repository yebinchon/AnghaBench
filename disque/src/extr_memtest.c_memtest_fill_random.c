
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int memtest_progress_step (unsigned long,unsigned long,char) ;
 int rand () ;

void memtest_fill_random(unsigned long *l, size_t bytes) {
    unsigned long step = 4096/sizeof(unsigned long);
    unsigned long words = bytes/sizeof(unsigned long)/2;
    unsigned long iwords = words/step;
    unsigned long off, w, *l1, *l2;

    assert((bytes & 4095) == 0);
    for (off = 0; off < step; off++) {
        l1 = l+off;
        l2 = l1+words;
        for (w = 0; w < iwords; w++) {




            *l1 = *l2 = ((unsigned long) (rand()&0xffff)) |
                        (((unsigned long) (rand()&0xffff)) << 16) |
                        (((unsigned long) (rand()&0xffff)) << 32) |
                        (((unsigned long) (rand()&0xffff)) << 48);

            l1 += step;
            l2 += step;
            if ((w & 0xffff) == 0)
                memtest_progress_step(w+iwords*off,words,'R');
        }
    }
}
