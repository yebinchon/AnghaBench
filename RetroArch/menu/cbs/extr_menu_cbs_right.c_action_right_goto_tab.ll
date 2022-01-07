; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_action_right_goto_tab.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_action_right_goto_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, i8*, i8*, i32)* }

@MENU_LIST_HORIZONTAL = common dso_local global i32 0, align 4
@MENU_ACTION_RIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @action_right_goto_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_right_goto_tab() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_12__, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = call %struct.TYPE_13__* @menu_entries_get_selection_buf_ptr(i32 0)
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %3, align 8
  %8 = call %struct.TYPE_13__* @menu_entries_get_menu_stack_ptr(i32 0)
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %4, align 8
  %9 = call i64 (...) @menu_navigation_get_selection()
  store i64 %9, i64* %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = icmp ne %struct.TYPE_13__* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_11__*
  br label %22

21:                                               ; preds = %0
  br label %22

22:                                               ; preds = %21, %12
  %23 = phi %struct.TYPE_11__* [ %20, %12 ], [ null, %21 ]
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %6, align 8
  %24 = load i32, i32* @MENU_LIST_HORIZONTAL, align 4
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @MENU_ACTION_RIGHT, align 4
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = call i32 @menu_driver_list_cache(%struct.TYPE_12__* %2)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %22
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, i8*, i8*, i32)*, i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, i8*, i8*, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, i8*, i8*, i32)* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, i8*, i8*, i32)*, i32 (%struct.TYPE_13__*, %struct.TYPE_13__*, i8*, i8*, i32)** %38, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = call i32 %39(%struct.TYPE_13__* %40, %struct.TYPE_13__* %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %42, i32* %1, align 4
  br label %44

43:                                               ; preds = %31, %22
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_13__* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local %struct.TYPE_13__* @menu_entries_get_menu_stack_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_driver_list_cache(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
