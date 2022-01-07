
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int MultiUnaryNode ;


 int WRITE_NODE_FIELD (int ) ;
 int childNode ;

__attribute__((used)) static void
OutMultiUnaryNodeFields(StringInfo str, const MultiUnaryNode *node)
{
 WRITE_NODE_FIELD(childNode);
}
