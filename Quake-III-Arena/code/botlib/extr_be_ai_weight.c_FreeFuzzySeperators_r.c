
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* child; } ;
typedef TYPE_1__ fuzzyseperator_t ;


 int FreeMemory (TYPE_1__*) ;

void FreeFuzzySeperators_r(fuzzyseperator_t *fs)
{
 if (!fs) return;
 if (fs->child) FreeFuzzySeperators_r(fs->child);
 if (fs->next) FreeFuzzySeperators_r(fs->next);
 FreeMemory(fs);
}
