; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_assert_wait64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_assert_wait64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Invalid waitq: %p\00", align 1
@TIMEOUT_URGENCY_SYS_NORMAL = common dso_local global i32 0, align 4
@TIMEOUT_NO_LEEWAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_assert_wait64(%struct.waitq* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %12 = call i32 (...) @current_thread()
  store i32 %12, i32* %9, align 4
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
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (...) @splsched()
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load %struct.waitq*, %struct.waitq** %5, align 8
  %27 = call i32 @waitq_lock(%struct.waitq* %26)
  %28 = load %struct.waitq*, %struct.waitq** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TIMEOUT_URGENCY_SYS_NORMAL, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @TIMEOUT_NO_LEEWAY, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @waitq_assert_wait64_locked(%struct.waitq* %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.waitq*, %struct.waitq** %5, align 8
  %37 = call i32 @waitq_unlock(%struct.waitq* %36)
  %38 = load %struct.waitq*, %struct.waitq** %5, align 8
  %39 = call i64 @waitq_irq_safe(%struct.waitq* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %25
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @splx(i32 %42)
  br label %44

44:                                               ; preds = %41, %25
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @waitq_valid(%struct.waitq*) #1

declare dso_local i32 @panic(i8*, %struct.waitq*) #1

declare dso_local i64 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i32 @waitq_assert_wait64_locked(%struct.waitq*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
