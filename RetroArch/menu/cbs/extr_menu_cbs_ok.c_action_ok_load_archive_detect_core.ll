; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_load_archive_detect_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_load_archive_detect_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i8*, i32, i32, i32* }
%struct.TYPE_7__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32*, i32*, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@CORE_TYPE_PLAIN = common dso_local global i32 0, align 4
@ACTION_OK_DL_DEFERRED_CORE_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_load_archive_detect_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_load_archive_detect_core(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca %struct.TYPE_9__, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %20 = call %struct.TYPE_7__* (...) @menu_driver_get_ptr()
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %18, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = call i32 (...) @menu_cbs_exit()
  store i32 %24, i32* %6, align 4
  br label %97

25:                                               ; preds = %5
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %15, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %16, align 8
  %32 = call i32 @core_info_get_list(i32** %14)
  %33 = load i32*, i32** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 5
  store i32* %33, i32** %34, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store i8* %39, i8** %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  store i32 4, i32* %45, align 8
  %46 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 1
  %49 = trunc i64 %48 to i32
  %50 = call i64 @malloc(i32 %49)
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %17, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %17, align 8
  %55 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = call i64 @menu_content_find_first_core(%struct.TYPE_8__* %12, i32 0, i8* %54, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %25
  store i32 -1, i32* %13, align 4
  br label %62

62:                                               ; preds = %61, %25
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = call i32 @fill_pathname_join(i32 %65, i8* %66, i8* %67, i32 4)
  %69 = load i32, i32* %13, align 4
  switch i32 %69, label %92 [
    i32 -1, label %70
    i32 0, label %83
  ]

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  store i32 0, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i32* null, i32** %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32* null, i32** %74, align 8
  store i32 0, i32* %13, align 4
  %75 = load i8*, i8** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CORE_TYPE_PLAIN, align 4
  %79 = call i32 @task_push_load_content_with_new_core_from_menu(i8* %75, i32 %77, %struct.TYPE_9__* %19, i32 %78, i32* null, i32* null)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %70
  store i32 -1, i32* %13, align 4
  br label %82

82:                                               ; preds = %81, %70
  br label %93

83:                                               ; preds = %62
  %84 = call i64 (...) @menu_navigation_get_selection()
  store i64 %84, i64* %10, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i32, i32* @ACTION_OK_DL_DEFERRED_CORE_LIST, align 4
  %91 = call i32 @generic_action_ok_displaylist_push(i8* %85, i32* null, i8* %86, i32 %87, i64 %88, i64 %89, i32 %90)
  store i32 %91, i32* %13, align 4
  br label %93

92:                                               ; preds = %62
  br label %93

93:                                               ; preds = %92, %83, %82
  %94 = load i8*, i8** %17, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %23
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_7__* @menu_driver_get_ptr(...) #1

declare dso_local i32 @menu_cbs_exit(...) #1

declare dso_local i32 @core_info_get_list(i32**) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @menu_content_find_first_core(%struct.TYPE_8__*, i32, i8*, i32) #1

declare dso_local i32 @fill_pathname_join(i32, i8*, i8*, i32) #1

declare dso_local i32 @task_push_load_content_with_new_core_from_menu(i8*, i32, %struct.TYPE_9__*, i32, i32*, i32*) #1

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i32 @generic_action_ok_displaylist_push(i8*, i32*, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
