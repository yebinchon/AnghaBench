; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/queues/extr_task_queue.c_retro_task_regular_gather.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/queues/extr_task_queue.c_retro_task_regular_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 (%struct.TYPE_7__*)*, %struct.TYPE_7__* }

@tasks_running = common dso_local global i32 0, align 4
@tasks_finished = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @retro_task_regular_gather to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retro_task_regular_gather() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %4

4:                                                ; preds = %7, %0
  %5 = call %struct.TYPE_7__* @task_queue_get(i32* @tasks_running)
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %1, align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %10, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %2, align 8
  br label %4

12:                                               ; preds = %4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %1, align 8
  br label %14

14:                                               ; preds = %39, %12
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %3, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %25 = call i32 %23(%struct.TYPE_7__* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %27 = call i32 @task_queue_push_progress(%struct.TYPE_7__* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %17
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %34 = call i32 @task_queue_put(i32* @tasks_finished, %struct.TYPE_7__* %33)
  br label %38

35:                                               ; preds = %17
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %37 = call i32 @retro_task_regular_push_running(%struct.TYPE_7__* %36)
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %1, align 8
  br label %14

41:                                               ; preds = %14
  %42 = call i32 (...) @retro_task_internal_gather()
  ret void
}

declare dso_local %struct.TYPE_7__* @task_queue_get(i32*) #1

declare dso_local i32 @task_queue_push_progress(%struct.TYPE_7__*) #1

declare dso_local i32 @task_queue_put(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @retro_task_regular_push_running(%struct.TYPE_7__*) #1

declare dso_local i32 @retro_task_internal_gather(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
