; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_wakeup64_all.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_wakeup64_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Invalid waitq: %p\00", align 1
@WAITQ_KEEP_LOCKED = common dso_local global i32 0, align 4
@WAITQ_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_wakeup64_all(%struct.waitq* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.waitq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
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
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.waitq*, %struct.waitq** %5, align 8
  %24 = load i32, i32* @WAITQ_KEEP_LOCKED, align 4
  %25 = call i32 @waitq_prepost_reserve(%struct.waitq* %23, i32 0, i32 %24)
  store i32 %25, i32* %10, align 4
  br label %30

26:                                               ; preds = %18
  %27 = call i32 (...) @splsched()
  store i32 %27, i32* %11, align 4
  %28 = load %struct.waitq*, %struct.waitq** %5, align 8
  %29 = call i32 @waitq_lock(%struct.waitq* %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.waitq*, %struct.waitq** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @WAITQ_UNLOCK, align 4
  %36 = call i32 @waitq_wakeup64_all_locked(%struct.waitq* %31, i32 %32, i32 %33, i32* %10, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.waitq*, %struct.waitq** %5, align 8
  %38 = call i64 @waitq_irq_safe(%struct.waitq* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @splx(i32 %41)
  br label %43

43:                                               ; preds = %40, %30
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @waitq_prepost_release_reserve(i32 %44)
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @waitq_valid(%struct.waitq*) #1

declare dso_local i32 @panic(i8*, %struct.waitq*) #1

declare dso_local i64 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @waitq_prepost_reserve(%struct.waitq*, i32, i32) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i32 @waitq_wakeup64_all_locked(%struct.waitq*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @waitq_prepost_release_reserve(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
