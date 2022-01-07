
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static inline void write_fileheader(void)
{
    printf("/* This file was automatically generated. */\n");
    printf("#include <stdint.h>\n");
}
