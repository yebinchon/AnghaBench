
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int panicPutHex (int) ;
 int panicPutStr (char*) ;

__attribute__((used)) static void putEntry(uint32_t pc, uint32_t sp)
{
    if (pc & 0x80000000) {
        pc = (pc & 0x3fffffff) | 0x40000000;
    }
    panicPutStr(" 0x");
    panicPutHex(pc);
    panicPutStr(":0x");
    panicPutHex(sp);
}
