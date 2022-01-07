; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_clear_promotion_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_clear_promotion_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.waitq = type { i32 }

@THREAD_NULL = common dso_local global %struct.TYPE_8__* null, align 8
@TH_SFLAG_WAITQ_PROMOTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @waitq_clear_promotion_locked(%struct.waitq* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.waitq*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.waitq*, %struct.waitq** %3, align 8
  %7 = call i32 @waitq_held(%struct.waitq* %6)
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @THREAD_NULL, align 8
  %11 = icmp ne %struct.TYPE_8__* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = call %struct.TYPE_8__* (...) @current_thread()
  %16 = icmp eq %struct.TYPE_8__* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TH_SFLAG_WAITQ_PROMOTED, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @TH_SFLAG_WAITQ_PROMOTED, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %47

27:                                               ; preds = %2
  %28 = load %struct.waitq*, %struct.waitq** %3, align 8
  %29 = call i32 @waitq_irq_safe(%struct.waitq* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i32 (...) @splsched()
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = call i32 @thread_lock(%struct.TYPE_8__* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = load i32, i32* @TH_SFLAG_WAITQ_PROMOTED, align 4
  %38 = call i32 @sched_thread_unpromote_reason(%struct.TYPE_8__* %36, i32 %37, i32 0)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = call i32 @thread_unlock(%struct.TYPE_8__* %39)
  %41 = load %struct.waitq*, %struct.waitq** %3, align 8
  %42 = call i32 @waitq_irq_safe(%struct.waitq* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @splx(i32 %45)
  br label %47

47:                                               ; preds = %26, %44, %33
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_held(%struct.waitq*) #1

declare dso_local %struct.TYPE_8__* @current_thread(...) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @thread_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @sched_thread_unpromote_reason(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
