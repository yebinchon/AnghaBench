; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_update_thumbnail_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_update_thumbnail_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@MENU_THUMBNAIL_RIGHT = common dso_local global i32 0, align 4
@menu_display_handle_thumbnail_upload = common dso_local global i32 0, align 4
@MENU_THUMBNAIL_LEFT = common dso_local global i32 0, align 4
@menu_display_handle_left_thumbnail_upload = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xmb_update_thumbnail_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmb_update_thumbnail_image(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = call %struct.TYPE_9__* (...) @config_get_ptr()
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %11 = call i32 (...) @video_driver_supports_rgba()
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %1
  br label %76

18:                                               ; preds = %14
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MENU_THUMBNAIL_RIGHT, align 4
  %23 = call i64 @menu_thumbnail_get_path(i32 %21, i32 %22, i8** %5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %18
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @path_is_valid(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @menu_display_handle_thumbnail_upload, align 4
  %37 = call i32 @task_push_image_load(i8* %30, i32 %31, i32 %35, i32 %36, i32* null)
  br label %42

38:                                               ; preds = %25
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = call i32 @video_driver_texture_unload(i32* %40)
  br label %42

42:                                               ; preds = %38, %29
  br label %47

43:                                               ; preds = %18
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = call i32 @video_driver_texture_unload(i32* %45)
  br label %47

47:                                               ; preds = %43, %42
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MENU_THUMBNAIL_LEFT, align 4
  %52 = call i64 @menu_thumbnail_get_path(i32 %50, i32 %51, i8** %6)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %47
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @path_is_valid(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @menu_display_handle_left_thumbnail_upload, align 4
  %66 = call i32 @task_push_image_load(i8* %59, i32 %60, i32 %64, i32 %65, i32* null)
  br label %71

67:                                               ; preds = %54
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = call i32 @video_driver_texture_unload(i32* %69)
  br label %71

71:                                               ; preds = %67, %58
  br label %76

72:                                               ; preds = %47
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = call i32 @video_driver_texture_unload(i32* %74)
  br label %76

76:                                               ; preds = %17, %72, %71
  ret void
}

declare dso_local %struct.TYPE_9__* @config_get_ptr(...) #1

declare dso_local i32 @video_driver_supports_rgba(...) #1

declare dso_local i64 @menu_thumbnail_get_path(i32, i32, i8**) #1

declare dso_local i64 @path_is_valid(i8*) #1

declare dso_local i32 @task_push_image_load(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @video_driver_texture_unload(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
