
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_field_base(int match, int field)
{
    return match < 3 ? 2 - field : 1 + field;
}
