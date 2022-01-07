; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_pop_idle_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_pop_idle_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uthread = type { i32 }
%struct.workqueue = type { i32, i32, i32, i32, i32 }

@uu_workq_entry = common dso_local global i32 0, align 4
@UT_WORKQ_RUNNING = common dso_local global i32 0, align 4
@UT_WORKQ_OVERCOMMIT = common dso_local global i32 0, align 4
@UT_WORKQ_DYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uthread* (%struct.workqueue*)* @workq_pop_idle_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uthread* @workq_pop_idle_thread(%struct.workqueue* %0) #0 {
  %2 = alloca %struct.workqueue*, align 8
  %3 = alloca %struct.uthread*, align 8
  store %struct.workqueue* %0, %struct.workqueue** %2, align 8
  %4 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %5 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %4, i32 0, i32 4
  %6 = call %struct.uthread* @TAILQ_FIRST(i32* %5)
  store %struct.uthread* %6, %struct.uthread** %3, align 8
  %7 = icmp ne %struct.uthread* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %10 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %9, i32 0, i32 4
  %11 = load %struct.uthread*, %struct.uthread** %3, align 8
  %12 = load i32, i32* @uu_workq_entry, align 4
  %13 = call i32 @TAILQ_REMOVE(i32* %10, %struct.uthread* %11, i32 %12)
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %16 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %15, i32 0, i32 3
  %17 = call %struct.uthread* @TAILQ_FIRST(i32* %16)
  store %struct.uthread* %17, %struct.uthread** %3, align 8
  %18 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %19 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %18, i32 0, i32 3
  %20 = load %struct.uthread*, %struct.uthread** %3, align 8
  %21 = load i32, i32* @uu_workq_entry, align 4
  %22 = call i32 @TAILQ_REMOVE(i32* %19, %struct.uthread* %20, i32 %21)
  br label %23

23:                                               ; preds = %14, %8
  %24 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %25 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %24, i32 0, i32 2
  %26 = load %struct.uthread*, %struct.uthread** %3, align 8
  %27 = load i32, i32* @uu_workq_entry, align 4
  %28 = call i32 @TAILQ_INSERT_TAIL(i32* %25, %struct.uthread* %26, i32 %27)
  %29 = load %struct.uthread*, %struct.uthread** %3, align 8
  %30 = getelementptr inbounds %struct.uthread, %struct.uthread* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @UT_WORKQ_RUNNING, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* @UT_WORKQ_RUNNING, align 4
  %38 = load i32, i32* @UT_WORKQ_OVERCOMMIT, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.uthread*, %struct.uthread** %3, align 8
  %41 = getelementptr inbounds %struct.uthread, %struct.uthread* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %45 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %49 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.uthread*, %struct.uthread** %3, align 8
  %53 = getelementptr inbounds %struct.uthread, %struct.uthread* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @UT_WORKQ_DYING, align 4
  %56 = and i32 %54, %55
  %57 = call i64 @__improbable(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %23
  %60 = load i32, i32* @UT_WORKQ_DYING, align 4
  %61 = load %struct.uthread*, %struct.uthread** %3, align 8
  %62 = getelementptr inbounds %struct.uthread, %struct.uthread* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %66 = call i32 @workq_death_policy_evaluate(%struct.workqueue* %65, i32 1)
  br label %67

67:                                               ; preds = %59, %23
  %68 = load %struct.uthread*, %struct.uthread** %3, align 8
  ret %struct.uthread* %68
}

declare dso_local %struct.uthread* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.uthread*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.uthread*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32 @workq_death_policy_evaluate(%struct.workqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
