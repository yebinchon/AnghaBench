; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_inheritor_workq_priority_chain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_turnstile.c_turnstile_update_inheritor_workq_priority_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i64, i32, %struct.workqueue* }
%struct.workqueue = type { i32 }

@MAXPRI_THROTTLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.turnstile*, i32)* @turnstile_update_inheritor_workq_priority_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turnstile_update_inheritor_workq_priority_chain(%struct.turnstile* %0, i32 %1) #0 {
  %3 = alloca %struct.turnstile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.workqueue*, align 8
  %6 = alloca i32, align 4
  store %struct.turnstile* %0, %struct.turnstile** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %8 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %7, i32 0, i32 2
  %9 = load %struct.workqueue*, %struct.workqueue** %8, align 8
  store %struct.workqueue* %9, %struct.workqueue** %5, align 8
  %10 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %11 = call i32 @workq_is_current_thread_updating_turnstile(%struct.workqueue* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %13 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MAXPRI_THROTTLE, align 8
  %16 = icmp sle i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @__improbable(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %22 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %21, i32 0, i32 1
  %23 = call i32 @waitq_unlock(i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @splx(i32 %24)
  br label %46

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %31 = call i32 @workq_reference(%struct.workqueue* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.turnstile*, %struct.turnstile** %3, align 8
  %34 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %33, i32 0, i32 1
  %35 = call i32 @waitq_unlock(i32* %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @splx(i32 %36)
  %38 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @workq_schedule_creator_turnstile_redrive(%struct.workqueue* %38, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %45 = call i32 @workq_deallocate_safe(%struct.workqueue* %44)
  br label %46

46:                                               ; preds = %20, %43, %32
  ret void
}

declare dso_local i32 @workq_is_current_thread_updating_turnstile(%struct.workqueue*) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32 @waitq_unlock(i32*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @workq_reference(%struct.workqueue*) #1

declare dso_local i32 @workq_schedule_creator_turnstile_redrive(%struct.workqueue*, i32) #1

declare dso_local i32 @workq_deallocate_safe(%struct.workqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
