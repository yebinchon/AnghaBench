; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_wakeup64_identify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_wakeup64_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Invalid waitq: %p\00", align 1
@WAITQ_KEEP_LOCKED = common dso_local global i32 0, align 4
@WAITQ_UNLOCK = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @waitq_wakeup64_identify(%struct.waitq* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.waitq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.waitq*, %struct.waitq** %5, align 8
  %14 = call i32 @waitq_valid(%struct.waitq* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load %struct.waitq*, %struct.waitq** %5, align 8
  %18 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.waitq* %17)
  br label %19

19:                                               ; preds = %16, %4
  %20 = load %struct.waitq*, %struct.waitq** %5, align 8
  %21 = call i64 @waitq_irq_safe(%struct.waitq* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load %struct.waitq*, %struct.waitq** %5, align 8
  %25 = load i32, i32* @WAITQ_KEEP_LOCKED, align 4
  %26 = call i32 @waitq_prepost_reserve(%struct.waitq* %24, i32 0, i32 %25)
  store i32 %26, i32* %9, align 4
  br label %31

27:                                               ; preds = %19
  %28 = call i32 (...) @splsched()
  store i32 %28, i32* %12, align 4
  %29 = load %struct.waitq*, %struct.waitq** %5, align 8
  %30 = call i32 @waitq_lock(%struct.waitq* %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.waitq*, %struct.waitq** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @WAITQ_UNLOCK, align 4
  %37 = call i64 @waitq_wakeup64_identify_locked(%struct.waitq* %32, i32 %33, i32 %34, i32* %10, i32* %9, i32 %35, i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @THREAD_NULL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @thread_reference(i64 %42)
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @thread_unlock(i64 %44)
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @splx(i32 %46)
  br label %48

48:                                               ; preds = %41, %31
  %49 = load %struct.waitq*, %struct.waitq** %5, align 8
  %50 = call i64 @waitq_irq_safe(%struct.waitq* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @splx(i32 %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @waitq_prepost_release_reserve(i32 %56)
  %58 = load i64, i64* %11, align 8
  ret i64 %58
}

declare dso_local i32 @waitq_valid(%struct.waitq*) #1

declare dso_local i32 @panic(i8*, %struct.waitq*) #1

declare dso_local i64 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @waitq_prepost_reserve(%struct.waitq*, i32, i32) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i64 @waitq_wakeup64_identify_locked(%struct.waitq*, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @thread_reference(i64) #1

declare dso_local i32 @thread_unlock(i64) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @waitq_prepost_release_reserve(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
