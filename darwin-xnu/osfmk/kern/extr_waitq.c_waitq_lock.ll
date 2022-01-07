; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_lock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }

@hwLockTimeOut = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"waitq deadlock - waitq=%p, cpu=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @waitq_lock(%struct.waitq* %0) #0 {
  %2 = alloca %struct.waitq*, align 8
  %3 = alloca i64, align 8
  store %struct.waitq* %0, %struct.waitq** %2, align 8
  %4 = load %struct.waitq*, %struct.waitq** %2, align 8
  %5 = load i32, i32* @hwLockTimeOut, align 4
  %6 = mul nsw i32 %5, 2
  %7 = call i64 @waitq_lock_to(%struct.waitq* %4, i32 %6)
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i64 @__improbable(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %3, align 8
  br label %14

14:                                               ; preds = %26, %12
  %15 = call i64 (...) @machine_timeout_suspended()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = call i32 (...) @mp_enable_preemption()
  %19 = load %struct.waitq*, %struct.waitq** %2, align 8
  %20 = load i32, i32* @hwLockTimeOut, align 4
  %21 = mul nsw i32 %20, 2
  %22 = call i64 @waitq_lock_to(%struct.waitq* %19, i32 %21)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %27

26:                                               ; preds = %17
  br label %14

27:                                               ; preds = %25, %14
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @FALSE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.waitq*, %struct.waitq** %2, align 8
  %33 = call i32 (...) @cpu_number()
  %34 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.waitq* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i64, i64* @FALSE, align 8
  %38 = call i32 @pltrace(i64 %37)
  %39 = load %struct.waitq*, %struct.waitq** %2, align 8
  %40 = call i32 @waitq_held(%struct.waitq* %39)
  %41 = call i32 @assert(i32 %40)
  ret void
}

declare dso_local i64 @__improbable(i32) #1

declare dso_local i64 @waitq_lock_to(%struct.waitq*, i32) #1

declare dso_local i64 @machine_timeout_suspended(...) #1

declare dso_local i32 @mp_enable_preemption(...) #1

declare dso_local i32 @panic(i8*, %struct.waitq*, i32) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @pltrace(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_held(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
