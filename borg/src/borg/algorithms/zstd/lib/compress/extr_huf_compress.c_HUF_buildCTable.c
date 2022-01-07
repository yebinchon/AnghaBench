
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nodeTable ;
typedef int huffNodeTable ;
typedef int HUF_CElt ;


 size_t HUF_buildCTable_wksp (int *,unsigned int const*,unsigned int,unsigned int,int ,int) ;

size_t HUF_buildCTable (HUF_CElt* tree, const unsigned* count, unsigned maxSymbolValue, unsigned maxNbBits)
{
    huffNodeTable nodeTable;
    return HUF_buildCTable_wksp(tree, count, maxSymbolValue, maxNbBits, nodeTable, sizeof(nodeTable));
}
