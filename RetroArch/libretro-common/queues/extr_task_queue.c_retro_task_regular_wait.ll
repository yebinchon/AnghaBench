; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/queues/extr_task_queue.c_retro_task_regular_wait.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/queues/extr_task_queue.c_retro_task_regular_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@tasks_running = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*)*, i8*)* @retro_task_regular_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retro_task_regular_wait(i64 (i8*)* %0, i8* %1) #0 {
  %3 = alloca i64 (i8*)*, align 8
  %4 = alloca i8*, align 8
  store i64 (i8*)* %0, i64 (i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %5

5:                                                ; preds = %20, %2
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tasks_running, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %10 = icmp ne i64 (i8*)* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i64 (i8*)*, i64 (i8*)** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 %12(i8* %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i1 [ true, %8 ], [ %15, %11 ]
  br label %18

18:                                               ; preds = %16, %5
  %19 = phi i1 [ false, %5 ], [ %17, %16 ]
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = call i32 (...) @retro_task_regular_gather()
  br label %5

22:                                               ; preds = %18
  ret void
}

declare dso_local i32 @retro_task_regular_gather(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
