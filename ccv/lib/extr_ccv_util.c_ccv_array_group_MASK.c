#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ rank; struct TYPE_10__* parent; scalar_t__ element; } ;
typedef  TYPE_1__ ccv_ptree_node_t ;
struct TYPE_11__ {int rnum; } ;
typedef  TYPE_2__ ccv_array_t ;
typedef  scalar_t__ (* ccv_array_group_f ) (scalar_t__,scalar_t__,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int*) ; 

int FUNC6(ccv_array_t* array, ccv_array_t** index, ccv_array_group_f gfunc, void* data)
{
	int i, j;
	ccv_ptree_node_t* node = (ccv_ptree_node_t*)FUNC1(array->rnum * sizeof(ccv_ptree_node_t));
	for (i = 0; i < array->rnum; i++)
	{
		node[i].parent = 0;
		node[i].element = FUNC3(array, i);
		node[i].rank = 0;
	}
	for (i = 0; i < array->rnum; i++)
	{
		if (!node[i].element)
			continue;
		ccv_ptree_node_t* root = node + i;
		while (root->parent)
			root = root->parent;
		for (j = 0; j < array->rnum; j++)
		{
			if( i != j && node[j].element && gfunc(node[i].element, node[j].element, data))
			{
				ccv_ptree_node_t* root2 = node + j;

				while(root2->parent)
					root2 = root2->parent;

				if(root2 != root)
				{
					if(root->rank > root2->rank)
						root2->parent = root;
					else
					{
						root->parent = root2;
						root2->rank += root->rank == root2->rank;
						root = root2;
					}

					/* compress path from node2 to the root: */
					ccv_ptree_node_t* node2 = node + j;
					while(node2->parent)
					{
						ccv_ptree_node_t* temp = node2;
						node2 = node2->parent;
						temp->parent = root;
					}

					/* compress path from node to the root: */
					node2 = node + i;
					while(node2->parent)
					{
						ccv_ptree_node_t* temp = node2;
						node2 = node2->parent;
						temp->parent = root;
					}
				}
			}
		}
	}
	if (*index == 0)
		*index = FUNC4(sizeof(int), array->rnum, 0);
	else
		FUNC2(*index);
	ccv_array_t* idx = *index;

	int class_idx = 0;
	for(i = 0; i < array->rnum; i++)
	{
		j = -1;
		ccv_ptree_node_t* node1 = node + i;
		if(node1->element)
		{
			while(node1->parent)
				node1 = node1->parent;
			if(node1->rank >= 0)
				node1->rank = ~class_idx++;
			j = ~node1->rank;
		}
		FUNC5(idx, &j);
	}
	FUNC0(node);
	return class_idx;
}