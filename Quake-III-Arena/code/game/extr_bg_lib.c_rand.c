
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int randSeed ;

int rand( void ) {
 randSeed = (69069 * randSeed + 1);
 return randSeed & 0x7fff;
}
