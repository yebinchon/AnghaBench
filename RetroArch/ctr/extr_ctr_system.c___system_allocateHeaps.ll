; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_system.c___system_allocateHeaps.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_system.c___system_allocateHeaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@__stacksize__ = common dso_local global i32 0, align 4
@__stack_size_extra = common dso_local global i32 0, align 4
@__stack_bottom = common dso_local global i32 0, align 4
@MEMOP_ALLOC = common dso_local global i32 0, align 4
@MEMPERM_READ = common dso_local global i32 0, align 4
@MEMPERM_WRITE = common dso_local global i32 0, align 4
@__heapBase = common dso_local global i32 0, align 4
@__heap_size = common dso_local global i64 0, align 8
@__linear_heap = common dso_local global i32 0, align 4
@__linear_heap_size = common dso_local global i32 0, align 4
@MEMOP_ALLOC_LINEAR = common dso_local global i32 0, align 4
@fake_heap_end = external dso_local global i8*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__system_allocateHeaps() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @svcQueryMemory(%struct.TYPE_3__* %2, i32* %3, i32 %5)
  %7 = load i32, i32* @__stacksize__, align 4
  %8 = add nsw i32 %7, 4095
  store i32 %8, i32* @__stacksize__, align 4
  %9 = load i32, i32* @__stacksize__, align 4
  %10 = and i32 %9, -4096
  store i32 %10, i32* @__stacksize__, align 4
  %11 = load i32, i32* @__stacksize__, align 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %0
  %16 = load i32, i32* @__stacksize__, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %16, %18
  br label %21

20:                                               ; preds = %0
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i32 [ %19, %15 ], [ 0, %20 ]
  store i32 %22, i32* @__stack_size_extra, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @__stack_size_extra, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* @__stack_bottom, align 4
  %27 = load i32, i32* @__stack_size_extra, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load i32, i32* @__stack_bottom, align 4
  %31 = load i32, i32* @__stack_size_extra, align 4
  %32 = load i32, i32* @MEMOP_ALLOC, align 4
  %33 = load i32, i32* @MEMPERM_READ, align 4
  %34 = load i32, i32* @MEMPERM_WRITE, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @svcControlMemory(i32* %1, i32 %30, i32 0, i32 %31, i32 %32, i32 %35)
  %37 = load i32, i32* @__stack_bottom, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = load i32, i32* @__stack_size_extra, align 4
  %41 = call i32 @memset(i8* %39, i32 252, i32 %40)
  br label %42

42:                                               ; preds = %29, %21
  store i32 134217728, i32* @__heapBase, align 4
  store i64 0, i64* @__heap_size, align 8
  %43 = load i32, i32* @__linear_heap_size, align 4
  %44 = load i32, i32* @MEMOP_ALLOC_LINEAR, align 4
  %45 = load i32, i32* @MEMPERM_READ, align 4
  %46 = load i32, i32* @MEMPERM_WRITE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @svcControlMemory(i32* @__linear_heap, i32 0, i32 0, i32 %43, i32 %44, i32 %47)
  store i8* inttoptr (i64 334495744 to i8*), i8** @fake_heap_end, align 8
  ret void
}

declare dso_local i32 @svcQueryMemory(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @svcControlMemory(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
