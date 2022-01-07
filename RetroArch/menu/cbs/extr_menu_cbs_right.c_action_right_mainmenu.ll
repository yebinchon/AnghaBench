; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_action_right_mainmenu.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_action_right_mainmenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@MENU_LIST_PLAIN = common dso_local global i32 0, align 4
@MENU_LIST_HORIZONTAL = common dso_local global i32 0, align 4
@MENU_LIST_TABS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @action_right_mainmenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_right_mainmenu(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call i32 @menu_driver_list_get_selection(%struct.TYPE_9__* %8)
  %13 = load i32, i32* @MENU_LIST_PLAIN, align 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = call i32 @menu_driver_list_get_size(%struct.TYPE_9__* %8)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = call %struct.TYPE_8__* (...) @config_get_ptr()
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %11, align 8
  %21 = load i32, i32* @MENU_LIST_HORIZONTAL, align 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @MENU_LIST_TABS, align 4
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = call i32 @menu_driver_list_get_size(%struct.TYPE_9__* %9)
  %26 = call i32 @menu_driver_list_get_size(%struct.TYPE_9__* %10)
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %30, %32
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %28, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %19
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36, %19
  %43 = call i32 (...) @action_right_goto_tab()
  store i32 %43, i32* %4, align 4
  br label %48

44:                                               ; preds = %36
  br label %47

45:                                               ; preds = %3
  %46 = call i32 @action_right_scroll(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %47

47:                                               ; preds = %45, %44
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @menu_driver_list_get_selection(%struct.TYPE_9__*) #1

declare dso_local i32 @menu_driver_list_get_size(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_8__* @config_get_ptr(...) #1

declare dso_local i32 @action_right_goto_tab(...) #1

declare dso_local i32 @action_right_scroll(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
