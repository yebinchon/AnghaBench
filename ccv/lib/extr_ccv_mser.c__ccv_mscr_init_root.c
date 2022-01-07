
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int point; } ;
typedef TYPE_1__ ccv_mser_node_t ;
struct TYPE_6__ {int reinit; int last_size; int size; int prev_size; int last_mscr_area; int mscr_area; scalar_t__ prev_chi; scalar_t__ chi; scalar_t__ step_now; scalar_t__ rank; int max_point; int min_point; } ;
typedef TYPE_2__ ccv_mscr_root_t ;



__attribute__((used)) static void _ccv_mscr_init_root(ccv_mscr_root_t* root, ccv_mser_node_t* node)
{
 root->reinit = 0x7FFFFFFF;
 root->min_point = root->max_point = node->point;
 root->rank = root->step_now = 0;
 root->chi = root->prev_chi = 0;
 root->last_size = root->size = root->prev_size = 1;
 root->last_mscr_area = root->mscr_area = -1;
}
