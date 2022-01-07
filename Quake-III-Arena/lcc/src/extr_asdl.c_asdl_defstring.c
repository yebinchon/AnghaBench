
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Text_box (int ,int) ;
 int put (int ) ;
 int rcc_Defstring (int ) ;
 int stringn (char*,int) ;

__attribute__((used)) static void asdl_defstring(int len, char *str) {
 put(rcc_Defstring(Text_box(stringn(str, len), len)));
}
