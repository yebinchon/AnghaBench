; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail.c_menu_thumbnail_request.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_thumbnail.c_menu_thumbnail_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }

@MENU_THUMBNAIL_STATUS_MISSING = common dso_local global i32 0, align 4
@menu_thumbnail_list_id = common dso_local global i32 0, align 4
@menu_thumbnail_handle_upload = common dso_local global i32 0, align 4
@MENU_THUMBNAIL_STATUS_PENDING = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_thumbnail_request(i32* %0, i32 %1, i32* %2, i64 %3, %struct.TYPE_14__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %10, align 8
  %15 = call %struct.TYPE_12__* (...) @config_get_ptr()
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %20 = icmp ne %struct.TYPE_14__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %18, %5
  br label %81

25:                                               ; preds = %21
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %27 = call i32 @menu_thumbnail_reset(%struct.TYPE_14__* %26)
  %28 = load i32, i32* @MENU_THUMBNAIL_STATUS_MISSING, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @menu_thumbnail_is_enabled(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %25
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @menu_thumbnail_update_path(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @menu_thumbnail_get_path(i32* %41, i32 %42, i8** %12)
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %45
  %49 = load i8*, i8** %12, align 8
  %50 = call i64 @path_is_valid(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %48
  %53 = call i64 @calloc(i32 1, i32 16)
  %54 = inttoptr i64 %53 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %14, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %56 = icmp ne %struct.TYPE_13__* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %81

58:                                               ; preds = %52
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %61, align 8
  %62 = load i32, i32* @menu_thumbnail_list_id, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 (...) @video_driver_supports_rgba()
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @menu_thumbnail_handle_upload, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %73 = call i64 @task_push_image_load(i8* %65, i32 %66, i32 %70, i32 %71, %struct.TYPE_13__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %58
  %76 = load i32, i32* @MENU_THUMBNAIL_STATUS_PENDING, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %58
  br label %80

80:                                               ; preds = %79, %48
  br label %81

81:                                               ; preds = %24, %57, %80, %45
  ret void
}

declare dso_local %struct.TYPE_12__* @config_get_ptr(...) #1

declare dso_local i32 @menu_thumbnail_reset(%struct.TYPE_14__*) #1

declare dso_local i64 @menu_thumbnail_is_enabled(i32*, i32) #1

declare dso_local i64 @menu_thumbnail_update_path(i32*, i32) #1

declare dso_local i32 @menu_thumbnail_get_path(i32*, i32, i8**) #1

declare dso_local i64 @path_is_valid(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @task_push_image_load(i8*, i32, i32, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @video_driver_supports_rgba(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
