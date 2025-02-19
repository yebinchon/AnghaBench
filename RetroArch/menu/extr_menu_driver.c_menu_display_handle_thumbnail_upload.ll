; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_handle_thumbnail_upload.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_display_handle_thumbnail_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }
%struct.texture_image = type opaque

@MENU_IMAGE_THUMBNAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_display_handle_thumbnail_upload(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca %struct.texture_image*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.texture_image*
  store %struct.texture_image* %12, %struct.texture_image** %10, align 8
  %13 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %14 = bitcast %struct.texture_image* %13 to i8*
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* @MENU_IMAGE_THUMBNAIL, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = call i32 @menu_driver_load_image(%struct.TYPE_3__* %9)
  %19 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %20 = bitcast %struct.texture_image* %19 to i8*
  %21 = call i32 @image_texture_free(i8* %20)
  %22 = load %struct.texture_image*, %struct.texture_image** %10, align 8
  %23 = bitcast %struct.texture_image* %22 to i8*
  %24 = call i32 @free(i8* %23)
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @free(i8* %25)
  ret void
}

declare dso_local i32 @menu_driver_load_image(%struct.TYPE_3__*) #1

declare dso_local i32 @image_texture_free(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
