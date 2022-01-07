; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_resume.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global %struct.TYPE_7__* null, align 8
@kernel_task = common dso_local global i64 0, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_TERMINATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_resume(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @THREAD_NULL, align 8
  %8 = icmp eq %struct.TYPE_7__* %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @kernel_task, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %16, i32* %2, align 4
  br label %48

17:                                               ; preds = %9
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = call i32 @thread_mtx_lock(%struct.TYPE_7__* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %17
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %31, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = call i32 @thread_release(%struct.TYPE_7__* %36)
  br label %38

38:                                               ; preds = %35, %29
  br label %41

39:                                               ; preds = %24
  %40 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %38
  br label %44

42:                                               ; preds = %17
  %43 = load i32, i32* @KERN_TERMINATED, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = call i32 @thread_mtx_unlock(%struct.TYPE_7__* %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %15
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @thread_release(%struct.TYPE_7__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
