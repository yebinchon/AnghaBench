; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_update_thumbnail_image.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_update_thumbnail_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32*, i32 }

@menu_display_handle_thumbnail_upload = common dso_local global i32 0, align 4
@menu_display_handle_left_thumbnail_upload = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @stripes_update_thumbnail_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_update_thumbnail_image(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %3, align 8
  %7 = call i32 (...) @video_driver_supports_rgba()
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %71

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @string_is_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %11
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i64 @path_is_valid(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @menu_display_handle_thumbnail_upload, align 4
  %29 = call i32 @task_push_image_load(i32* %26, i32 %27, i32 0, i32 %28, i32* null)
  br label %34

30:                                               ; preds = %17
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = call i32 @video_driver_texture_unload(i32* %32)
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @free(i32* %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %34, %11
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @string_is_empty(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @path_is_valid(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @menu_display_handle_left_thumbnail_upload, align 4
  %59 = call i32 @task_push_image_load(i32* %56, i32 %57, i32 0, i32 %58, i32* null)
  br label %64

60:                                               ; preds = %47
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = call i32 @video_driver_texture_unload(i32* %62)
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @free(i32* %67)
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %10, %64, %41
  ret void
}

declare dso_local i32 @video_driver_supports_rgba(...) #1

declare dso_local i32 @string_is_empty(i32*) #1

declare dso_local i64 @path_is_valid(i32*) #1

declare dso_local i32 @task_push_image_load(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @video_driver_texture_unload(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
