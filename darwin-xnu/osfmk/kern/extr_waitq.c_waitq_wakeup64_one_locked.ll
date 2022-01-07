; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_wakeup64_one_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_wakeup64_one_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }

@WAITQ_SELECT_MAX_PRI = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global i64 0, align 8
@WAITQ_UNLOCK = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_NOT_WAITING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @waitq_wakeup64_one_locked(%struct.waitq* %0, i32 %1, i32 %2, i32* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.waitq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.waitq* %0, %struct.waitq** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load %struct.waitq*, %struct.waitq** %8, align 8
  %18 = call i32 @waitq_held(%struct.waitq* %17)
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @WAITQ_SELECT_MAX_PRI, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %6
  %24 = load %struct.waitq*, %struct.waitq** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = call i64 @waitq_select_max_locked(%struct.waitq* %24, i32 %25, i32* %26, i32* %15)
  store i64 %27, i64* %14, align 8
  br label %34

28:                                               ; preds = %6
  %29 = load %struct.waitq*, %struct.waitq** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @waitq_select_one_locked(%struct.waitq* %29, i32 %30, i32* %31, i32 %32, i32* %15)
  store i64 %33, i64* %14, align 8
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* @THREAD_NULL, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.waitq*, %struct.waitq** %8, align 8
  %40 = call i32 @waitq_stats_count_wakeup(%struct.waitq* %39)
  br label %44

41:                                               ; preds = %34
  %42 = load %struct.waitq*, %struct.waitq** %8, align 8
  %43 = call i32 @waitq_stats_count_fail(%struct.waitq* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @WAITQ_UNLOCK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.waitq*, %struct.waitq** %8, align 8
  %50 = call i32 @waitq_unlock(%struct.waitq* %49)
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* @THREAD_NULL, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load i64, i64* %14, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.waitq*, %struct.waitq** %8, align 8
  %59 = call i32 @maybe_adjust_thread_pri(i64 %56, i32 %57, %struct.waitq* %58)
  %60 = load i64, i64* %14, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i64 @thread_go(i64 %60, i32 %61)
  store i64 %62, i64* %16, align 8
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* @KERN_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i64, i64* %14, align 8
  %69 = call i32 @thread_unlock(i64 %68)
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @splx(i32 %70)
  %72 = load i64, i64* %16, align 8
  store i64 %72, i64* %7, align 8
  br label %75

73:                                               ; preds = %51
  %74 = load i64, i64* @KERN_NOT_WAITING, align 8
  store i64 %74, i64* %7, align 8
  br label %75

75:                                               ; preds = %73, %55
  %76 = load i64, i64* %7, align 8
  ret i64 %76
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_held(%struct.waitq*) #1

declare dso_local i64 @waitq_select_max_locked(%struct.waitq*, i32, i32*, i32*) #1

declare dso_local i64 @waitq_select_one_locked(%struct.waitq*, i32, i32*, i32, i32*) #1

declare dso_local i32 @waitq_stats_count_wakeup(%struct.waitq*) #1

declare dso_local i32 @waitq_stats_count_fail(%struct.waitq*) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

declare dso_local i32 @maybe_adjust_thread_pri(i64, i32, %struct.waitq*) #1

declare dso_local i64 @thread_go(i64, i32) #1

declare dso_local i32 @thread_unlock(i64) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
