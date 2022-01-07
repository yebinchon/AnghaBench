; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_action_left_mainmenu.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_action_left_mainmenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_20__*, %struct.TYPE_20__*, i8*, i8*, i32)* }

@MENU_LIST_PLAIN = common dso_local global i32 0, align 4
@MENU_LIST_HORIZONTAL = common dso_local global i32 0, align 4
@MENU_ACTION_LEFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @action_left_mainmenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_left_mainmenu(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_19__, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %17 = call i32* (...) @menu_driver_get_ptr()
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = call i32 (...) @menu_cbs_exit()
  store i32 %21, i32* %4, align 4
  br label %89

22:                                               ; preds = %3
  %23 = call i32 @menu_driver_list_get_selection(%struct.TYPE_19__* %8)
  %24 = load i32, i32* @MENU_LIST_PLAIN, align 4
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 3
  store i32 %24, i32* %25, align 4
  %26 = call i32 @menu_driver_list_get_size(%struct.TYPE_19__* %8)
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %43

30:                                               ; preds = %22
  %31 = call %struct.TYPE_17__* (...) @config_get_ptr()
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %30
  store i32 1, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %35
  br label %44

43:                                               ; preds = %22
  store i32 2, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %9, align 4
  switch i32 %45, label %87 [
    i32 1, label %46
    i32 2, label %84
    i32 0, label %86
  ]

46:                                               ; preds = %44
  %47 = call %struct.TYPE_20__* @menu_entries_get_menu_stack_ptr(i32 0)
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %13, align 8
  %48 = call %struct.TYPE_20__* @menu_entries_get_selection_buf_ptr(i32 0)
  store %struct.TYPE_20__* %48, %struct.TYPE_20__** %14, align 8
  %49 = call i64 (...) @menu_navigation_get_selection()
  store i64 %49, i64* %15, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %51 = icmp ne %struct.TYPE_20__* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_18__*
  br label %62

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %52
  %63 = phi %struct.TYPE_18__* [ %60, %52 ], [ null, %61 ]
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %16, align 8
  %64 = load i32, i32* @MENU_LIST_HORIZONTAL, align 4
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @MENU_ACTION_LEFT, align 4
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = call i32 @menu_driver_list_cache(%struct.TYPE_19__* %12)
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %70 = icmp ne %struct.TYPE_18__* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %62
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_20__*, %struct.TYPE_20__*, i8*, i8*, i32)*, i32 (%struct.TYPE_20__*, %struct.TYPE_20__*, i8*, i8*, i32)** %73, align 8
  %75 = icmp ne i32 (%struct.TYPE_20__*, %struct.TYPE_20__*, i8*, i8*, i32)* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = load i32 (%struct.TYPE_20__*, %struct.TYPE_20__*, i8*, i8*, i32)*, i32 (%struct.TYPE_20__*, %struct.TYPE_20__*, i8*, i8*, i32)** %78, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %82 = call i32 %79(%struct.TYPE_20__* %80, %struct.TYPE_20__* %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %82, i32* %4, align 4
  br label %89

83:                                               ; preds = %71, %62
  br label %88

84:                                               ; preds = %44
  %85 = call i32 @action_left_scroll(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %88

86:                                               ; preds = %44
  br label %87

87:                                               ; preds = %44, %86
  br label %88

88:                                               ; preds = %87, %84, %83
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %76, %20
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32* @menu_driver_get_ptr(...) #1

declare dso_local i32 @menu_cbs_exit(...) #1

declare dso_local i32 @menu_driver_list_get_selection(%struct.TYPE_19__*) #1

declare dso_local i32 @menu_driver_list_get_size(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_17__* @config_get_ptr(...) #1

declare dso_local %struct.TYPE_20__* @menu_entries_get_menu_stack_ptr(i32) #1

declare dso_local %struct.TYPE_20__* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @menu_driver_list_cache(%struct.TYPE_19__*) #1

declare dso_local i32 @action_left_scroll(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
