
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int MultiBinaryNode ;


 int WRITE_NODE_FIELD (int ) ;
 int leftChildNode ;
 int rightChildNode ;

__attribute__((used)) static void
OutMultiBinaryNodeFields(StringInfo str, const MultiBinaryNode *node)
{
 WRITE_NODE_FIELD(leftChildNode);
 WRITE_NODE_FIELD(rightChildNode);
}
