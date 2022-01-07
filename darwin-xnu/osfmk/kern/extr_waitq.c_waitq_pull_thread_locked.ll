; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_pull_thread_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_pull_thread_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64 }
%struct.TYPE_6__ = type { %struct.waitq* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_pull_thread_locked(%struct.waitq* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.waitq*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.waitq*, align 8
  store %struct.waitq* %0, %struct.waitq** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = call i32 @assert_thread_magic(%struct.TYPE_6__* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.waitq*, %struct.waitq** %10, align 8
  %12 = load %struct.waitq*, %struct.waitq** %4, align 8
  %13 = icmp eq %struct.waitq* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.waitq*, %struct.waitq** %4, align 8
  %17 = call i32 @waitq_irq_safe(%struct.waitq* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct.waitq*, %struct.waitq** %4, align 8
  %21 = call %struct.waitq* @waitq_get_safeq(%struct.waitq* %20)
  store %struct.waitq* %21, %struct.waitq** %6, align 8
  br label %24

22:                                               ; preds = %2
  %23 = load %struct.waitq*, %struct.waitq** %4, align 8
  store %struct.waitq* %23, %struct.waitq** %6, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.waitq*, %struct.waitq** %6, align 8
  %26 = call i32 @waitq_lock_try(%struct.waitq* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %50

29:                                               ; preds = %24
  %30 = load %struct.waitq*, %struct.waitq** %6, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = call i32 @waitq_thread_remove(%struct.waitq* %30, %struct.TYPE_6__* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = call i32 @thread_clear_waitq_state(%struct.TYPE_6__* %33)
  %35 = load %struct.waitq*, %struct.waitq** %4, align 8
  %36 = call i32 @waitq_stats_count_clear_wakeup(%struct.waitq* %35)
  %37 = load %struct.waitq*, %struct.waitq** %6, align 8
  %38 = call i64 @waitq_is_global(%struct.waitq* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.waitq*, %struct.waitq** %6, align 8
  %42 = call i64 @waitq_empty(%struct.waitq* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.waitq*, %struct.waitq** %6, align 8
  %46 = getelementptr inbounds %struct.waitq, %struct.waitq* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %40, %29
  %48 = load %struct.waitq*, %struct.waitq** %6, align 8
  %49 = call i32 @waitq_unlock(%struct.waitq* %48)
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %28
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @assert_thread_magic(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local %struct.waitq* @waitq_get_safeq(%struct.waitq*) #1

declare dso_local i32 @waitq_lock_try(%struct.waitq*) #1

declare dso_local i32 @waitq_thread_remove(%struct.waitq*, %struct.TYPE_6__*) #1

declare dso_local i32 @thread_clear_waitq_state(%struct.TYPE_6__*) #1

declare dso_local i32 @waitq_stats_count_clear_wakeup(%struct.waitq*) #1

declare dso_local i64 @waitq_is_global(%struct.waitq*) #1

declare dso_local i64 @waitq_empty(%struct.waitq*) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
