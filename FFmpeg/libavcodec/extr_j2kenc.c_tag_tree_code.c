
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; struct TYPE_3__* parent; scalar_t__ vis; } ;
typedef TYPE_1__ Jpeg2000TgtNode ;
typedef int Jpeg2000EncoderContext ;


 int put_bits (int *,int,int) ;

__attribute__((used)) static void tag_tree_code(Jpeg2000EncoderContext *s, Jpeg2000TgtNode *node, int threshold)
{
    Jpeg2000TgtNode *stack[30];
    int sp = 1, curval = 0;
    stack[0] = node;

    node = node->parent;
    while(node){
        if (node->vis){
            curval = node->val;
            break;
        }
        node->vis++;
        stack[sp++] = node;
        node = node->parent;
    }
    while(--sp >= 0){
        if (stack[sp]->val >= threshold){
            put_bits(s, 0, threshold - curval);
            break;
        }
        put_bits(s, 0, stack[sp]->val - curval);
        put_bits(s, 1, 1);
        curval = stack[sp]->val;
    }
}
