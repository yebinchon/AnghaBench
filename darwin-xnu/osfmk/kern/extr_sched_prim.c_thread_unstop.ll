; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_prim.c_thread_unstop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_prim.c_thread_unstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }

@TH_RUN = common dso_local global i32 0, align 4
@TH_WAIT = common dso_local global i32 0, align 4
@TH_SUSP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_unstop(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = call i32 (...) @splsched()
  store i32 %4, i32* %3, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = call i32 @wake_lock(%struct.TYPE_7__* %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = call i32 @thread_lock(%struct.TYPE_7__* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TH_RUN, align 4
  %13 = load i32, i32* @TH_WAIT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @TH_SUSP, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %11, %16
  %18 = load i32, i32* @TH_SUSP, align 4
  %19 = icmp ne i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TH_SUSP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %1
  %29 = load i32, i32* @TH_SUSP, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %28
  %40 = load i64, i64* @FALSE, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = call i32 @thread_unlock(%struct.TYPE_7__* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = call i32 @thread_wakeup(i64* %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = call i32 @wake_unlock(%struct.TYPE_7__* %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @splx(i32 %50)
  br label %60

52:                                               ; preds = %28
  br label %53

53:                                               ; preds = %52, %1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = call i32 @thread_unlock(%struct.TYPE_7__* %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = call i32 @wake_unlock(%struct.TYPE_7__* %56)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @splx(i32 %58)
  br label %60

60:                                               ; preds = %53, %39
  ret void
}

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @wake_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @thread_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @thread_wakeup(i64*) #1

declare dso_local i32 @wake_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
