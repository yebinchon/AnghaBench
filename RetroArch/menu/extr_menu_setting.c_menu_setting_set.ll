; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_setting_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_menu_setting_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_setting_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = call i32* @menu_entries_get_selection_buf_ptr(i32 0)
  store i32* %12, i32** %9, align 8
  %13 = call i64 (...) @menu_navigation_get_selection()
  store i64 %13, i64* %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32*, i32** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i64 @file_list_get_actiondata_at_offset(i32* %17, i64 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_2__*
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi %struct.TYPE_2__* [ %20, %16 ], [ null, %21 ]
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %11, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %40

27:                                               ; preds = %22
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @menu_action_handle_setting(i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %37, %26
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i64 @file_list_get_actiondata_at_offset(i32*, i64) #1

declare dso_local i32 @menu_action_handle_setting(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
