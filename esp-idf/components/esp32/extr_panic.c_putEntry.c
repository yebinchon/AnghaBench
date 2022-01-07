
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int panicPutHex (int ) ;
 int panicPutStr (char*) ;

__attribute__((used)) static void putEntry(uint32_t pc, uint32_t sp)
{
    panicPutStr(" 0x");
    panicPutHex(pc);
    panicPutStr(":0x");
    panicPutHex(sp);
}
