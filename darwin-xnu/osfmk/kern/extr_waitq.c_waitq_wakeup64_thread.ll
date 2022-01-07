; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_wakeup64_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_wakeup64_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Invalid waitq: %p\00", align 1
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_NOT_WAITING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @waitq_wakeup64_thread(%struct.waitq* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.waitq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.waitq*, %struct.waitq** %5, align 8
  %13 = call i32 @waitq_valid(%struct.waitq* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load %struct.waitq*, %struct.waitq** %5, align 8
  %17 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.waitq* %16)
  br label %18

18:                                               ; preds = %15, %4
  %19 = load %struct.waitq*, %struct.waitq** %5, align 8
  %20 = call i64 @waitq_irq_safe(%struct.waitq* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (...) @splsched()
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.waitq*, %struct.waitq** %5, align 8
  %26 = call i32 @waitq_lock(%struct.waitq* %25)
  %27 = load %struct.waitq*, %struct.waitq** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @waitq_select_thread_locked(%struct.waitq* %27, i32 %28, i32 %29, i32* %11)
  store i64 %30, i64* %9, align 8
  %31 = load %struct.waitq*, %struct.waitq** %5, align 8
  %32 = call i32 @waitq_unlock(%struct.waitq* %31)
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @KERN_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @thread_go(i32 %37, i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @KERN_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @thread_unlock(i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @splx(i32 %47)
  %49 = load %struct.waitq*, %struct.waitq** %5, align 8
  %50 = call i32 @waitq_stats_count_wakeup(%struct.waitq* %49)
  br label %55

51:                                               ; preds = %24
  %52 = load i64, i64* @KERN_NOT_WAITING, align 8
  store i64 %52, i64* %9, align 8
  %53 = load %struct.waitq*, %struct.waitq** %5, align 8
  %54 = call i32 @waitq_stats_count_fail(%struct.waitq* %53)
  br label %55

55:                                               ; preds = %51, %36
  %56 = load %struct.waitq*, %struct.waitq** %5, align 8
  %57 = call i64 @waitq_irq_safe(%struct.waitq* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @splx(i32 %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i64, i64* %9, align 8
  ret i64 %63
}

declare dso_local i32 @waitq_valid(%struct.waitq*) #1

declare dso_local i32 @panic(i8*, %struct.waitq*) #1

declare dso_local i64 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i64 @waitq_select_thread_locked(%struct.waitq*, i32, i32, i32*) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

declare dso_local i64 @thread_go(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_unlock(i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @waitq_stats_count_wakeup(%struct.waitq*) #1

declare dso_local i32 @waitq_stats_count_fail(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
