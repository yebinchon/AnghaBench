; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/system/extr_memory.c_memoryRelease.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/system/extr_memory.c_memoryRelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mem1_heap = common dso_local global i32* null, align 8
@MEM_BASE_HEAP_MEM1 = common dso_local global i32 0, align 4
@MEM_FRAME_HEAP_FREE_ALL = common dso_local global i32 0, align 4
@bucket_heap = common dso_local global i32* null, align 8
@MEM_BASE_HEAP_FG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memoryRelease() #0 {
  %1 = load i32*, i32** @mem1_heap, align 8
  %2 = call i32 @MEMDestroyExpHeap(i32* %1)
  %3 = load i32, i32* @MEM_BASE_HEAP_MEM1, align 4
  %4 = call i32 @MEMGetBaseHeapHandle(i32 %3)
  %5 = load i32, i32* @MEM_FRAME_HEAP_FREE_ALL, align 4
  %6 = call i32 @MEMFreeToFrmHeap(i32 %4, i32 %5)
  store i32* null, i32** @mem1_heap, align 8
  %7 = load i32*, i32** @bucket_heap, align 8
  %8 = call i32 @MEMDestroyExpHeap(i32* %7)
  %9 = load i32, i32* @MEM_BASE_HEAP_FG, align 4
  %10 = call i32 @MEMGetBaseHeapHandle(i32 %9)
  %11 = load i32, i32* @MEM_FRAME_HEAP_FREE_ALL, align 4
  %12 = call i32 @MEMFreeToFrmHeap(i32 %10, i32 %11)
  store i32* null, i32** @bucket_heap, align 8
  ret void
}

declare dso_local i32 @MEMDestroyExpHeap(i32*) #1

declare dso_local i32 @MEMFreeToFrmHeap(i32, i32) #1

declare dso_local i32 @MEMGetBaseHeapHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
