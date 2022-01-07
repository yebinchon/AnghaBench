; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_processor.c_processor_set_statistics.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_processor.c_processor_set_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@PROCESSOR_SET_NULL = common dso_local global i32* null, align 8
@pset0 = common dso_local global i32 0, align 4
@KERN_INVALID_PROCESSOR_SET = common dso_local global i32 0, align 4
@PROCESSOR_SET_LOAD_INFO = common dso_local global i32 0, align 4
@PROCESSOR_SET_LOAD_INFO_COUNT = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@sched_mach_factor = common dso_local global i32 0, align 4
@sched_load_average = common dso_local global i32 0, align 4
@tasks_count = common dso_local global i32 0, align 4
@threads_count = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processor_set_statistics(i32* %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32*, i32** @PROCESSOR_SET_NULL, align 8
  %13 = icmp eq i32* %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, @pset0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %4
  %18 = load i32, i32* @KERN_INVALID_PROCESSOR_SET, align 4
  store i32 %18, i32* %5, align 4
  br label %50

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PROCESSOR_SET_LOAD_INFO, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %19
  %24 = load i64*, i64** %9, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PROCESSOR_SET_LOAD_INFO_COUNT, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %29, i32* %5, align 4
  br label %50

30:                                               ; preds = %23
  %31 = load i64, i64* %8, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %10, align 8
  %33 = load i32, i32* @sched_mach_factor, align 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @sched_load_average, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @tasks_count, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @threads_count, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* @PROCESSOR_SET_LOAD_INFO_COUNT, align 8
  %46 = load i64*, i64** %9, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %47, i32* %5, align 4
  br label %50

48:                                               ; preds = %19
  %49 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %30, %28, %17
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
