
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; double minweight; double maxweight; struct TYPE_3__* next; struct TYPE_3__* child; } ;
typedef TYPE_1__ fuzzyseperator_t ;


 scalar_t__ WT_BALANCE ;

void ScaleFuzzySeperatorBalanceRange_r(fuzzyseperator_t *fs, float scale)
{
 if (fs->child)
 {
  ScaleFuzzySeperatorBalanceRange_r(fs->child, scale);
 }
 else if (fs->type == WT_BALANCE)
 {
  float mid = (fs->minweight + fs->maxweight) * 0.5;

  fs->maxweight = mid + (fs->maxweight - mid) * scale;
  fs->minweight = mid + (fs->minweight - mid) * scale;
  if (fs->maxweight < fs->minweight)
  {
   fs->maxweight = fs->minweight;
  }
 }
 if (fs->next) ScaleFuzzySeperatorBalanceRange_r(fs->next, scale);
}
