
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPWSTR ;
 int * IDC_ARROW ;
 int * IDC_CROSS ;
 int * IDC_HAND ;
 int * IDC_IBEAM ;
 int * IDC_SIZENS ;
 int * IDC_SIZEWE ;

__attribute__((used)) static LPWSTR translateCursorShape(int shape)
{
    switch (shape)
    {
        case 133:
            return IDC_ARROW;
        case 129:
            return IDC_IBEAM;
        case 132:
            return IDC_CROSS;
        case 131:
            return IDC_HAND;
        case 130:
            return IDC_SIZEWE;
        case 128:
            return IDC_SIZENS;
    }

    return ((void*)0);
}
