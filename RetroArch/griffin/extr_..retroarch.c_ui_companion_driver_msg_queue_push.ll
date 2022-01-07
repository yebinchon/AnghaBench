; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_ui_companion_driver_msg_queue_push.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_ui_companion_driver_msg_queue_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32, i8*, i32, i32, i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i32 (i32, i8*, i32, i32, i32)* }

@ui_companion = common dso_local global %struct.TYPE_8__* null, align 8
@ui_companion_data = common dso_local global i32 0, align 4
@configuration_settings = common dso_local global %struct.TYPE_9__* null, align 8
@qt_is_inited = common dso_local global i64 0, align 8
@ui_companion_qt = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ui_companion_qt_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32)* @ui_companion_driver_msg_queue_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ui_companion_driver_msg_queue_push(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ui_companion, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32 (i32, i8*, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32)** %15, align 8
  %17 = icmp ne i32 (i32, i8*, i32, i32, i32)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32 (i32, i8*, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32)** %20, align 8
  %22 = load i32, i32* @ui_companion_data, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 %21(i32 %22, i8* %23, i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %18, %13, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
