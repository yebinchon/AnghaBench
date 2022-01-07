; ModuleID = '/home/carl/AnghaBench/RetroArch/bootstrap/vita/extr_sbrk.c__free_vita_heap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/bootstrap/vita/extr_sbrk.c__free_vita_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SceKernelLwMutexWork = type { i32 }

@_newlib_sbrk_mutex = common dso_local global i64 0, align 8
@_newlib_heap_memblock = common dso_local global i64 0, align 8
@_newlib_vm_memblock = common dso_local global i64 0, align 8
@_newlib_heap_base = common dso_local global i64 0, align 8
@_newlib_heap_cur = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_free_vita_heap() #0 {
  %1 = load i64, i64* @_newlib_sbrk_mutex, align 8
  %2 = inttoptr i64 %1 to %struct.SceKernelLwMutexWork*
  %3 = call i32 @sceKernelDeleteLwMutex(%struct.SceKernelLwMutexWork* %2)
  %4 = load i64, i64* @_newlib_heap_memblock, align 8
  %5 = call i32 @sceKernelFreeMemBlock(i64 %4)
  %6 = load i64, i64* @_newlib_vm_memblock, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i64, i64* @_newlib_vm_memblock, align 8
  %10 = call i32 @sceKernelFreeMemBlock(i64 %9)
  br label %11

11:                                               ; preds = %8, %0
  store i64 0, i64* @_newlib_vm_memblock, align 8
  store i64 0, i64* @_newlib_heap_memblock, align 8
  store i64 0, i64* @_newlib_heap_base, align 8
  store i64 0, i64* @_newlib_heap_cur, align 8
  ret void
}

declare dso_local i32 @sceKernelDeleteLwMutex(%struct.SceKernelLwMutexWork*) #1

declare dso_local i32 @sceKernelFreeMemBlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
