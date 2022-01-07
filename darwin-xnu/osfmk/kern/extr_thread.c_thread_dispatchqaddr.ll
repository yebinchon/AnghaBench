; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_dispatchqaddr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_dispatchqaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@THREAD_NULL = common dso_local global %struct.TYPE_7__* null, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @thread_dispatchqaddr(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @THREAD_NULL, align 8
  %8 = icmp eq %struct.TYPE_7__* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %51

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i64 0, i64* %2, align 8
  br label %51

18:                                               ; preds = %10
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TRUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = call i64 @get_task_dispatchqueue_offset(%struct.TYPE_8__* %28)
  %30 = add nsw i64 %25, %29
  store i64 %30, i64* %4, align 8
  br label %49

31:                                               ; preds = %18
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @get_dispatchqueue_offset_from_proc(i64 %44)
  %46 = add nsw i64 %39, %45
  store i64 %46, i64* %4, align 8
  br label %48

47:                                               ; preds = %31
  store i64 0, i64* %4, align 8
  br label %48

48:                                               ; preds = %47, %38
  br label %49

49:                                               ; preds = %48, %24
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %49, %17, %9
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

declare dso_local i64 @get_task_dispatchqueue_offset(%struct.TYPE_8__*) #1

declare dso_local i64 @get_dispatchqueue_offset_from_proc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
