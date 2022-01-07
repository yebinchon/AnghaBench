
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* PERM ;
 int RAND_MAX ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int rand () ;
 int srand (unsigned int) ;

void seed(unsigned int x) {
    srand(x);
    for (int i = 0; i < 256; i++) {
        PERM[i] = i;
    }
    for (int i = 255; i > 0; i--) {
        int j;
        int n = i + 1;
        while (n <= (j = rand() / (RAND_MAX / n)));
        unsigned char a = PERM[i];
        unsigned char b = PERM[j];
        PERM[i] = b;
        PERM[j] = a;
    }
    memcpy(PERM + 256, PERM, sizeof(unsigned char) * 256);
}
