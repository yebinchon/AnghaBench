; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_ui_companion_driver_notify_refresh.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_ui_companion_driver_notify_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i32 (i32)* }

@ui_companion = common dso_local global %struct.TYPE_8__* null, align 8
@ui_companion_data = common dso_local global i32 0, align 4
@configuration_settings = common dso_local global %struct.TYPE_9__* null, align 8
@qt_is_inited = common dso_local global i64 0, align 8
@ui_companion_qt = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ui_companion_qt_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_companion_driver_notify_refresh() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ui_companion, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %1, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %4 = icmp ne %struct.TYPE_8__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %17

6:                                                ; preds = %0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32 (i32)*, i32 (i32)** %8, align 8
  %10 = icmp ne i32 (i32)* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = load i32, i32* @ui_companion_data, align 4
  %16 = call i32 %14(i32 %15)
  br label %17

17:                                               ; preds = %5, %11, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
