
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RealDTEntry ;


 int skipProperties (int ) ;

__attribute__((used)) static RealDTEntry
GetFirstChild(RealDTEntry parent)
{
 return skipProperties(parent);
}
