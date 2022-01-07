
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * CitusNodeTagNamesD ;
 int RegisterExtensibleNodeMethods (int *) ;
 int StaticAssertExpr (int,char*) ;
 int lengthof (int *) ;
 int * nodeMethods ;

void
RegisterNodes(void)
{
 int off;

 StaticAssertExpr(lengthof(nodeMethods) == lengthof(CitusNodeTagNamesD),
      "number of node methods and names do not match");

 for (off = 0; off < lengthof(nodeMethods); off++)
 {
  RegisterExtensibleNodeMethods(&nodeMethods[off]);
 }
}
