
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int FloatAsInt( float f ) {
 union
 {
     int i;
     float f;
 } temp;

 temp.f = f;
 return temp.i;
}
