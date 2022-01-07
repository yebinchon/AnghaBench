
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (int,int) ;

__attribute__((used)) static void test_label() {
    int x = 0;
    if (1)
      L1: x++;
    expect(1, x);

    int y = 0;
    if (0)
      L2: y++;
    expect(0, y);

    int z = 0;
    switch (7) {
        if (1)
          case 5: z += 2;
        if (0)
          case 7: z += 3;
        if (1)
          case 6: z += 5;
    }
    expect(8, z);
}
