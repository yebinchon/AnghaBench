
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ confidence; } ;
struct TYPE_8__ {TYPE_1__ classification; } ;
typedef TYPE_2__ ccv_comp_t ;
struct TYPE_9__ {int rnum; } ;
typedef TYPE_3__ ccv_array_t ;


 int _ccv_tld_box_percolate_down (TYPE_3__*,int) ;
 scalar_t__ ccv_array_get (TYPE_3__*,int) ;

__attribute__((used)) static void _ccv_tld_box_percolate_up(ccv_array_t* good, int smallest)
{
 for (;;)
 {
  int one = smallest;
  int parent = (smallest + 1) / 2 - 1;
  if (parent < 0)
   break;
  ccv_comp_t* parent_comp = (ccv_comp_t*)ccv_array_get(good, parent);
  ccv_comp_t* smallest_comp = (ccv_comp_t*)ccv_array_get(good, smallest);
  if (smallest_comp->classification.confidence < parent_comp->classification.confidence)
  {
   smallest = parent;
   smallest_comp = parent_comp;
  }

  if (smallest == one)
   break;
  ccv_comp_t c = *(ccv_comp_t*)ccv_array_get(good, smallest);
  *(ccv_comp_t*)ccv_array_get(good, smallest) = *(ccv_comp_t*)ccv_array_get(good, one);
  *(ccv_comp_t*)ccv_array_get(good, one) = c;
  int other = 2 * (parent + 1) - !(one & 1);
  if (other < good->rnum)
  {
   ccv_comp_t* other_comp = (ccv_comp_t*)ccv_array_get(good, other);

   if (other_comp->classification.confidence < smallest_comp->classification.confidence)
    break;
  }
 }

 _ccv_tld_box_percolate_down(good, smallest);
}
