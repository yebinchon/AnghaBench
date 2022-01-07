; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_driver_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_driver_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }

@CMD_EVENT_CORE_INFO_INIT = common dso_local global i32 0, align 4
@CMD_EVENT_LOAD_CORE_PERSIST = common dso_local global i32 0, align 4
@menu_driver_data = common dso_local global i64 0, align 8
@menu_driver_ctx = common dso_local global %struct.TYPE_2__* null, align 8
@menu_userdata = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_driver_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @CMD_EVENT_CORE_INFO_INIT, align 4
  %5 = call i32 @command_event(i32 %4, i32* null)
  %6 = load i32, i32* @CMD_EVENT_LOAD_CORE_PERSIST, align 4
  %7 = call i32 @command_event(i32 %6, i32* null)
  %8 = load i64, i64* @menu_driver_data, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @menu_driver_init_internal(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %10, %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @menu_driver_ctx, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @menu_driver_ctx, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = icmp ne i32 (i32, i32)* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @menu_driver_ctx, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = load i32, i32* @menu_userdata, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 %25(i32 %26, i32 %27)
  store i32 1, i32* %2, align 4
  br label %31

29:                                               ; preds = %17, %14
  br label %30

30:                                               ; preds = %29, %10
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %22
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @command_event(i32, i32*) #1

declare dso_local i64 @menu_driver_init_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
