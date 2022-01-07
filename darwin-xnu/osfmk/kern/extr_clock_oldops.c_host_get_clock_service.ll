; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_host_get_clock_service.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock_oldops.c_host_get_clock_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@HOST_NULL = common dso_local global i64 0, align 8
@clock_count = common dso_local global i64 0, align 8
@CLOCK_NULL = common dso_local global %struct.TYPE_5__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@clock_list = common dso_local global %struct.TYPE_5__* null, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host_get_clock_service(i64 %0, i64 %1, %struct.TYPE_5__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @HOST_NULL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @clock_count, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %11, %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @CLOCK_NULL, align 8
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %20, align 8
  %21 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clock_list, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %24
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %26, align 8
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %32, %18
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
