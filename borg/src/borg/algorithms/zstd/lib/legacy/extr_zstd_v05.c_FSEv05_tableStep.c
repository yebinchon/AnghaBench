
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;



__attribute__((used)) static U32 FSEv05_tableStep(U32 tableSize) { return (tableSize>>1) + (tableSize>>3) + 3; }
