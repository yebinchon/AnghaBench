; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_save.c_event_load_save_files.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_save.c_event_load_save_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@task_save_files = common dso_local global %struct.TYPE_2__* null, align 8
@RARCH_CTL_IS_SRAM_LOAD_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_load_save_files() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @task_save_files, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @RARCH_CTL_IS_SRAM_LOAD_DISABLED, align 4
  %7 = call i64 @rarch_ctl(i32 %6, i32* null)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %0
  store i32 0, i32* %1, align 4
  br label %24

10:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %20, %10
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @task_save_files, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @content_load_ram_file(i32 %18)
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %11

23:                                               ; preds = %11
  store i32 1, i32* %1, align 4
  br label %24

24:                                               ; preds = %23, %9
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i64 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @content_load_ram_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
