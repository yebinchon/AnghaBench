; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_reset_textures_list_buffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_reset_textures_list_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.texture_image = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_display_reset_textures_list_buffer(i64* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.texture_image, align 8
  store i64* %0, i64** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %17 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %16, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %16, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = call i32 (...) @video_driver_supports_rgba()
  %21 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %16, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @image_texture_load_buffer(%struct.texture_image* %16, i32 %22, i8* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %50

28:                                               ; preds = %7
  %29 = load i32*, i32** %14, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %16, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %14, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32*, i32** %15, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %16, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %15, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %10, align 4
  %44 = load i64*, i64** %9, align 8
  %45 = call i32 @video_driver_texture_load(%struct.texture_image* %16, i32 %43, i64* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %50

48:                                               ; preds = %42
  %49 = call i32 @image_texture_free(%struct.texture_image* %16)
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %47, %27
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @video_driver_supports_rgba(...) #1

declare dso_local i32 @image_texture_load_buffer(%struct.texture_image*, i32, i8*, i32) #1

declare dso_local i32 @video_driver_texture_load(%struct.texture_image*, i32, i64*) #1

declare dso_local i32 @image_texture_free(%struct.texture_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
