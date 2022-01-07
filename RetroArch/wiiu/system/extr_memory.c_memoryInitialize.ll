; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/system/extr_memory.c_memoryInitialize.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/system/extr_memory.c_memoryInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM_BASE_HEAP_MEM1 = common dso_local global i32 0, align 4
@mem1_heap = common dso_local global i8* null, align 8
@MEM_BASE_HEAP_FG = common dso_local global i32 0, align 4
@bucket_heap = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memoryInitialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* null, i8** %3, align 8
  %7 = load i32, i32* @MEM_BASE_HEAP_MEM1, align 4
  %8 = call i32 @MEMGetBaseHeapHandle(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @MEMGetAllocatableSizeForFrmHeapEx(i32 %9, i32 4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i8* @MEMAllocFromFrmHeapEx(i32 %11, i32 %12, i32 4)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @MEMCreateExpHeapEx(i8* %17, i32 %18, i32 0)
  store i8* %19, i8** @mem1_heap, align 8
  br label %20

20:                                               ; preds = %16, %0
  %21 = load i32, i32* @MEM_BASE_HEAP_FG, align 4
  %22 = call i32 @MEMGetBaseHeapHandle(i32 %21)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @MEMGetAllocatableSizeForFrmHeapEx(i32 %23, i32 4)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i8* @MEMAllocFromFrmHeapEx(i32 %25, i32 %26, i32 4)
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %1, align 4
  %33 = call i8* @MEMCreateExpHeapEx(i8* %31, i32 %32, i32 0)
  store i8* %33, i8** @bucket_heap, align 8
  br label %34

34:                                               ; preds = %30, %20
  ret void
}

declare dso_local i32 @MEMGetBaseHeapHandle(i32) #1

declare dso_local i32 @MEMGetAllocatableSizeForFrmHeapEx(i32, i32) #1

declare dso_local i8* @MEMAllocFromFrmHeapEx(i32, i32, i32) #1

declare dso_local i8* @MEMCreateExpHeapEx(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
