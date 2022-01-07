; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_sidebar.c_ozone_change_tab.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_sidebar.c_ozone_change_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*, i8*, i32)* }

@MENU_LIST_HORIZONTAL = common dso_local global i32 0, align 4
@MENU_ACTION_LEFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ozone_change_tab(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = call %struct.TYPE_14__* @menu_entries_get_menu_stack_ptr(i32 0)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %7, align 8
  %14 = call %struct.TYPE_14__* @menu_entries_get_selection_buf_ptr(i32 0)
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %10, align 8
  %15 = call i64 (...) @menu_navigation_get_selection()
  store i64 %15, i64* %11, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %17 = icmp ne %struct.TYPE_14__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @file_list_get_actiondata_at_offset(%struct.TYPE_14__* %19, i64 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_12__*
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi %struct.TYPE_12__* [ %22, %18 ], [ null, %23 ]
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %12, align 8
  %26 = load i32, i32* @MENU_LIST_HORIZONTAL, align 4
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @MENU_ACTION_LEFT, align 4
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %24
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 %46, 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @free(i32* %50)
  br label %52

52:                                               ; preds = %42, %24
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = sub i64 %56, 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @msg_hash_to_str(i32 %60)
  %62 = call i32* @strdup(i32 %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = sub i64 %66, 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store i32* %62, i32** %69, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = sub i64 %74, 1
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i32 %70, i32* %77, align 8
  %78 = call i32 @menu_driver_list_cache(%struct.TYPE_13__* %9)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %80 = icmp ne %struct.TYPE_12__* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %52
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*, i8*, i32)*, i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*, i8*, i32)** %83, align 8
  %85 = icmp ne i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*, i8*, i32)* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*, i8*, i32)*, i32 (%struct.TYPE_14__*, %struct.TYPE_14__*, i8*, i8*, i32)** %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = call i32 %89(%struct.TYPE_14__* %90, %struct.TYPE_14__* %91, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %93

93:                                               ; preds = %86, %81, %52
  ret void
}

declare dso_local %struct.TYPE_14__* @menu_entries_get_menu_stack_ptr(i32) #1

declare dso_local %struct.TYPE_14__* @menu_entries_get_selection_buf_ptr(i32) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i64 @file_list_get_actiondata_at_offset(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @strdup(i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @menu_driver_list_cache(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
