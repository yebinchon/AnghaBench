; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/queues/extr_task_queue.c_retro_task_internal_gather.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/queues/extr_task_queue.c_retro_task_internal_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, i32 (%struct.TYPE_8__*)*, i32, i32, i32 (%struct.TYPE_8__*, i32, i32, %struct.TYPE_8__*)* }

@tasks_finished = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @retro_task_internal_gather to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retro_task_internal_gather() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %1, align 8
  br label %2

2:                                                ; preds = %58, %0
  %3 = call %struct.TYPE_8__* @task_queue_get(i32* @tasks_finished)
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %1, align 8
  %4 = icmp ne %struct.TYPE_8__* %3, null
  br i1 %4, label %5, label %61

5:                                                ; preds = %2
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %7 = call i32 @task_queue_push_progress(%struct.TYPE_8__* %6)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 5
  %10 = load i32 (%struct.TYPE_8__*, i32, i32, %struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*, i32, i32, %struct.TYPE_8__*)** %9, align 8
  %11 = icmp ne i32 (%struct.TYPE_8__*, i32, i32, %struct.TYPE_8__*)* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %5
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 5
  %15 = load i32 (%struct.TYPE_8__*, i32, i32, %struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*, i32, i32, %struct.TYPE_8__*)** %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = call i32 %15(%struct.TYPE_8__* %16, i32 %19, i32 %22, %struct.TYPE_8__* %25)
  br label %27

27:                                               ; preds = %12, %5
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %29, align 8
  %31 = icmp ne i32 (%struct.TYPE_8__*)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %37 = call i32 %35(%struct.TYPE_8__* %36)
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = call i32 @free(%struct.TYPE_8__* %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = icmp ne %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = call i32 @free(%struct.TYPE_8__* %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %60 = call i32 @free(%struct.TYPE_8__* %59)
  br label %2

61:                                               ; preds = %2
  ret void
}

declare dso_local %struct.TYPE_8__* @task_queue_get(i32*) #1

declare dso_local i32 @task_queue_push_progress(%struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
