; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_ui_companion_driver_init_first.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_ui_companion_driver_init_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i32 (...)* }
%struct.TYPE_10__ = type { i32 (...)* }

@configuration_settings = common dso_local global %struct.TYPE_9__* null, align 8
@ui_companion_drivers = common dso_local global i64* null, align 8
@ui_companion = common dso_local global %struct.TYPE_8__* null, align 8
@ui_companion_data = common dso_local global i32 0, align 4
@qt_is_inited = common dso_local global i32 0, align 4
@ui_companion_qt = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ui_companion_qt_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_companion_driver_init_first() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = load %struct.TYPE_9__*, %struct.TYPE_9__** @configuration_settings, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %1, align 8
  %3 = load i64*, i64** @ui_companion_drivers, align 8
  %4 = getelementptr inbounds i64, i64* %3, i64 0
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** @ui_companion, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ui_companion, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ui_companion, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32 (...)*, i32 (...)** %17, align 8
  %19 = icmp ne i32 (...)* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ui_companion, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  store i32 %24, i32* @ui_companion_data, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = call i32 @ui_companion_driver_toggle(i32 0)
  br label %27

27:                                               ; preds = %25, %9
  br label %28

28:                                               ; preds = %27, %0
  ret void
}

declare dso_local i32 @ui_companion_driver_toggle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
