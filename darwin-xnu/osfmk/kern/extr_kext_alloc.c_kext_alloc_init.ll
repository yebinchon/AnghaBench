; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kext_alloc.c_kext_alloc_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kext_alloc.c_kext_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@kernel_map = common dso_local global %struct.TYPE_9__* null, align 8
@g_kext_map = common dso_local global %struct.TYPE_9__* null, align 8
@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@kext_alloc_base = common dso_local global i64 0, align 8
@VM_MAX_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@kext_alloc_max = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@SEG_TEXT = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@VM_FLAGS_FIXED = common dso_local global i32 0, align 4
@VM_FLAGS_OVERWRITE = common dso_local global i32 0, align 4
@VM_KERN_MEMORY_KEXT = common dso_local global i32 0, align 4
@VM_MAP_KERNEL_FLAGS_NONE = common dso_local global i32 0, align 4
@kext_post_boot_base = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kext_alloc_init() #0 {
  %1 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kernel_map, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** @g_kext_map, align 8
  %2 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  store i64 %2, i64* @kext_alloc_base, align 8
  %3 = load i64, i64* @VM_MAX_KERNEL_ADDRESS, align 8
  store i64 %3, i64* @kext_alloc_max, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
