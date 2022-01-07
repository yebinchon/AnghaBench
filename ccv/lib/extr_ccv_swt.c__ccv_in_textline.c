
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ left; scalar_t__ right; int dy; int dx; } ;
typedef TYPE_1__ ccv_letter_pair_t ;



__attribute__((used)) static int _ccv_in_textline(const void* a, const void* b, void* data)
{
 ccv_letter_pair_t* pair1 = (ccv_letter_pair_t*)a;
 ccv_letter_pair_t* pair2 = (ccv_letter_pair_t*)b;
 if (pair1->left == pair2->left || pair1->right == pair2->right)
 {
  int tn = pair1->dy * pair2->dx - pair1->dx * pair2->dy;
  int td = pair1->dx * pair2->dx + pair1->dy * pair2->dy;

  if (tn * 7 < -td * 4 && tn * 7 > td * 4)
   return 1;
 } else if (pair1->left == pair2->right || pair1->right == pair2->left) {
  int tn = pair1->dy * pair2->dx - pair1->dx * pair2->dy;
  int td = pair1->dx * pair2->dx + pair1->dy * pair2->dy;

  if (tn * 7 < td * 4 && tn * 7 > -td * 4)
   return 1;
 }
 return 0;
}
