
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
typedef TYPE_1__ HuffTable ;



__attribute__((used)) static int compare_by_length(const void *a, const void *b)
{
    HuffTable a_val = *(HuffTable *) a;
    HuffTable b_val = *(HuffTable *) b;
    return a_val.length - b_val.length;
}
