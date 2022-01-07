; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_heap.c___lwp_heap_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_heap.c___lwp_heap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i8*, i8*, i32, i32 }

@HEAP_MIN_SIZE = common dso_local global i64 0, align 8
@HEAP_OVERHEAD = common dso_local global i64 0, align 8
@HEAP_DUMMY_FLAG = common dso_local global i8* null, align 8
@HEAP_BLOCK_USED_OVERHEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__lwp_heap_init(%struct.TYPE_8__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @__lwp_heap_pgsize_valid(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @HEAP_MIN_SIZE, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %4
  store i64 0, i64* %5, align 8
  br label %75

21:                                               ; preds = %16
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @_CPU_ISR_Disable(i64 %22)
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 5
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @HEAP_OVERHEAD, align 8
  %29 = sub nsw i64 %27, %28
  store i64 %29, i64* %10, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %12, align 8
  %32 = load i8*, i8** @HEAP_DUMMY_FLAG, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i64, i64* %10, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = call i32 @__lwp_heap_tail(%struct.TYPE_8__* %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = call i32 @__lwp_heap_head(%struct.TYPE_8__* %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %57, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %59 = call %struct.TYPE_9__* @__lwp_heap_nextblock(%struct.TYPE_9__* %58)
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %12, align 8
  %60 = load i64, i64* %10, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @HEAP_DUMMY_FLAG, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %69, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @_CPU_ISR_Restore(i64 %70)
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @HEAP_BLOCK_USED_OVERHEAD, align 8
  %74 = sub nsw i64 %72, %73
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %21, %20
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local i32 @__lwp_heap_pgsize_valid(i64) #1

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @__lwp_heap_tail(%struct.TYPE_8__*) #1

declare dso_local i32 @__lwp_heap_head(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @__lwp_heap_nextblock(%struct.TYPE_9__*) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
