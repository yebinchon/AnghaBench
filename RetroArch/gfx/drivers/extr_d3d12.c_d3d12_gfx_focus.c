
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int win32_has_focus () ;

__attribute__((used)) static bool d3d12_gfx_focus(void* data) { return win32_has_focus(); }
