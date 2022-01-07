
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int find_index(int *index, int value, int size)
{
    int i, start, end;

    if ((value < index[0]) || (value > index[size - 1]))
        return 1;

    i = start = 0;
    end = size - 1;

    while (start <= end) {
        i = (end + start) / 2;
        if (index[i] == value)
            return 0;
        if (value < index[i])
            end = i - 1;
        if (value > index[i])
            start = i + 1;
    }

    return 1;
}
