; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_memoryshot.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_memoryshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_MACH_VM_PRESSURE = common dso_local global i32 0, align 4
@vm_debug_events = common dso_local global i64 0, align 8
@vm_page_active_count = common dso_local global i32 0, align 4
@vm_page_free_count = common dso_local global i32 0, align 4
@vm_page_inactive_count = common dso_local global i32 0, align 4
@vm_page_speculative_count = common dso_local global i32 0, align 4
@vm_page_throttled_count = common dso_local global i32 0, align 4

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
