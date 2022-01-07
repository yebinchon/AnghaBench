; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_start_in_assert_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_start_in_assert_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.waitq = type { i32 }

@TH_WAIT = common dso_local global i32 0, align 4
@TH_UNINT = common dso_local global i32 0, align 4
@TIMEOUT_URGENCY_SYS_NORMAL = common dso_local global i32 0, align 4
@TIMEOUT_WAIT_FOREVER = common dso_local global i32 0, align 4
@TIMEOUT_NO_LEEWAY = common dso_local global i32 0, align 4
@THREAD_WAITING = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_start_in_assert_wait(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.waitq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.waitq* @assert_wait_queue(i32 %10)
  store %struct.waitq* %11, %struct.waitq** %7, align 8
  %12 = call i32 (...) @splsched()
  store i32 %12, i32* %9, align 4
  %13 = load %struct.waitq*, %struct.waitq** %7, align 8
  %14 = call i32 @waitq_lock(%struct.waitq* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = call i32 @thread_lock(%struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TH_WAIT, align 4
  %28 = load i32, i32* @TH_UNINT, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = load i32, i32* @TH_WAIT, align 4
  %32 = load i32, i32* @TH_UNINT, align 4
  %33 = or i32 %31, %32
  %34 = icmp eq i32 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* @TH_WAIT, align 4
  %38 = load i32, i32* @TH_UNINT, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = call i32 @thread_unlock(%struct.TYPE_6__* %45)
  %47 = load %struct.waitq*, %struct.waitq** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @CAST_EVENT64_T(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @TIMEOUT_URGENCY_SYS_NORMAL, align 4
  %52 = load i32, i32* @TIMEOUT_WAIT_FOREVER, align 4
  %53 = load i32, i32* @TIMEOUT_NO_LEEWAY, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = call i64 @waitq_assert_wait64_locked(%struct.waitq* %47, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, %struct.TYPE_6__* %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @THREAD_WAITING, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = call i32 @thread_lock(%struct.TYPE_6__* %61)
  %63 = load i64, i64* @TRUE, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = call i32 @thread_unlock(%struct.TYPE_6__* %66)
  %68 = load %struct.waitq*, %struct.waitq** %7, align 8
  %69 = call i32 @waitq_unlock(%struct.waitq* %68)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @splx(i32 %70)
  ret void
}

declare dso_local %struct.waitq* @assert_wait_queue(i32) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i32 @thread_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_6__*) #1

declare dso_local i64 @waitq_assert_wait64_locked(%struct.waitq*, i32, i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @CAST_EVENT64_T(i32) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
