; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_driver_iterate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_driver_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i32, i32)* }
%struct.TYPE_4__ = type { i32 }

@menu_driver_current_time_us = common dso_local global i32 0, align 4
@menu_driver_pending_quick_menu = common dso_local global i32 0, align 4
@MENU_SETTINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ACTION_OK_DL_CONTENT_SETTINGS = common dso_local global i32 0, align 4
@menu_driver_selection_ptr = common dso_local global i64 0, align 8
@menu_driver_ctx = common dso_local global %struct.TYPE_5__* null, align 8
@menu_driver_data = common dso_local global i32 0, align 4
@menu_userdata = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_driver_iterate(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = call i32 (...) @cpu_features_get_time_usec()
  store i32 %4, i32* @menu_driver_current_time_us, align 4
  %5 = load i32, i32* @menu_driver_pending_quick_menu, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  store i32 0, i32* @menu_driver_pending_quick_menu, align 4
  %8 = load i32, i32* @MENU_SETTINGS, align 4
  %9 = call i32 @menu_entries_flush_stack(i32* null, i32 %8)
  %10 = call i32 @menu_display_set_msg_force(i32 1)
  %11 = load i32, i32* @ACTION_OK_DL_CONTENT_SETTINGS, align 4
  %12 = call i32 @generic_action_ok_displaylist_push(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 %11)
  store i64 0, i64* @menu_driver_selection_ptr, align 8
  store i32 1, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menu_driver_ctx, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menu_driver_ctx, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %18, align 8
  %20 = icmp ne i32 (i32, i32, i32)* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menu_driver_ctx, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %23, align 8
  %25 = load i32, i32* @menu_driver_data, align 4
  %26 = load i32, i32* @menu_userdata, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 %24(i32 %25, i32 %26, i32 %29)
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %34

33:                                               ; preds = %21, %16, %13
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32, %7
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @cpu_features_get_time_usec(...) #1

declare dso_local i32 @menu_entries_flush_stack(i32*, i32) #1

declare dso_local i32 @menu_display_set_msg_force(i32) #1

declare dso_local i32 @generic_action_ok_displaylist_push(i8*, i32*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
