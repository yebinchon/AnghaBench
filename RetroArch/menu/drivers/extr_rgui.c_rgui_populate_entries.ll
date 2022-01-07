; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_populate_entries.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_populate_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST = common dso_local global i32 0, align 4
@RGUI_ASPECT_RATIO_LOCK_NONE = common dso_local global i64 0, align 8
@MENU_ENUM_LABEL_DEFERRED_VIDEO_SETTINGS_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32)* @rgui_populate_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgui_populate_entries(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %9, align 8
  %14 = call %struct.TYPE_10__* (...) @config_get_ptr()
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %10, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %4
  br label %80

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST, align 4
  %24 = call i32 @msg_hash_to_str(i32 %23)
  %25 = call i64 @string_is_equal(i8* %22, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY, align 4
  %30 = call i32 @msg_hash_to_str(i32 %29)
  %31 = call i64 @string_is_equal(i8* %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST, align 4
  %36 = call i32 @msg_hash_to_str(i32 %35)
  %37 = call i64 @string_is_equal(i8* %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %33, %27, %21
  %40 = phi i1 [ true, %27 ], [ true, %21 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @menu_entries_get_title(i32 %46, i32 4)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @rgui_navigation_set(i8* %50, i32 1)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RGUI_ASPECT_RATIO_LOCK_NONE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %39
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_VIDEO_SETTINGS_LIST, align 4
  %61 = call i32 @msg_hash_to_str(i32 %60)
  %62 = call i64 @string_is_equal(i8* %59, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %65, i8 0, i64 4, i1 false)
  %66 = call i32 @rgui_get_video_config(%struct.TYPE_11__* %11)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  %69 = call i64 @rgui_is_video_config_equal(%struct.TYPE_11__* %11, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 3
  %75 = call i32 @rgui_set_video_config(%struct.TYPE_12__* %72, i32* %74, i32 0)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %64
  br label %79

79:                                               ; preds = %78, %58
  br label %80

80:                                               ; preds = %20, %79, %39
  ret void
}

declare dso_local %struct.TYPE_10__* @config_get_ptr(...) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @menu_entries_get_title(i32, i32) #1

declare dso_local i32 @rgui_navigation_set(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rgui_get_video_config(%struct.TYPE_11__*) #1

declare dso_local i64 @rgui_is_video_config_equal(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @rgui_set_video_config(%struct.TYPE_12__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
