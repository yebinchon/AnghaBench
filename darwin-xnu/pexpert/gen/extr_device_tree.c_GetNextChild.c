
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RealDTEntry ;


 int skipTree (int ) ;

__attribute__((used)) static RealDTEntry
GetNextChild(RealDTEntry sibling)
{
 return skipTree(sibling);
}
