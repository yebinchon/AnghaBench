
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ROLLOFF (int) ;

__attribute__((used)) static int weight(int i, int blen, int offset)
{



    if (i < 2*offset)
        return offset == 1 ? ((i) ? 5 : 3) : (1 + (6*(i) + offset - 1) / (2*offset - 1));
    else if (i > blen-1 - 2*offset)
        return offset == 1 ? ((blen-1 - i) ? 5 : 3) : (1 + (6*(blen-1 - i) + offset - 1) / (2*offset - 1));
    return 8;
}
