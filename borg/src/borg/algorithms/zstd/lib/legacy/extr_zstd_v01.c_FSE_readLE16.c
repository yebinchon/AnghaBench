
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U16 ;
typedef int BYTE ;


 scalar_t__ FSE_isLittleEndian () ;
 int FSE_read16 (void const*) ;

__attribute__((used)) static U16 FSE_readLE16(const void* memPtr)
{
    if (FSE_isLittleEndian())
        return FSE_read16(memPtr);
    else
    {
        const BYTE* p = (const BYTE*)memPtr;
        return (U16)(p[0] + (p[1]<<8));
    }
}
