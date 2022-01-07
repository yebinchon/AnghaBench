
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int compute_padding(int offset, int align) {
    return (offset % align == 0) ? 0 : align - offset % align;
}
