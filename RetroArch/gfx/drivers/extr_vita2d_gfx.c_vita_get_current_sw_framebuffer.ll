; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vita2d_gfx.c_vita_get_current_sw_framebuffer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_vita2d_gfx.c_vita_get_current_sw_framebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_framebuffer = type { i64, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i32*, i32, i32 }

@RETRO_PIXEL_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@RETRO_PIXEL_FORMAT_RGB565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.retro_framebuffer*)* @vita_get_current_sw_framebuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vita_get_current_sw_framebuffer(i8* %0, %struct.retro_framebuffer* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.retro_framebuffer*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.retro_framebuffer* %1, %struct.retro_framebuffer** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.retro_framebuffer*, %struct.retro_framebuffer** %4, align 8
  %17 = getelementptr inbounds %struct.retro_framebuffer, %struct.retro_framebuffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %12
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.retro_framebuffer*, %struct.retro_framebuffer** %4, align 8
  %25 = getelementptr inbounds %struct.retro_framebuffer, %struct.retro_framebuffer* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %20, %12, %2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = call i32 (...) @vita2d_wait_rendering_done()
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @vita2d_free_texture(i32* %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %33, %28
  %42 = load %struct.retro_framebuffer*, %struct.retro_framebuffer** %4, align 8
  %43 = getelementptr inbounds %struct.retro_framebuffer, %struct.retro_framebuffer* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.retro_framebuffer*, %struct.retro_framebuffer** %4, align 8
  %48 = getelementptr inbounds %struct.retro_framebuffer, %struct.retro_framebuffer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32* @vita2d_create_empty_texture_format(i64 %54, i64 %57, i32 %60)
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  store i32* %61, i32** %63, align 8
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @vita2d_texture_set_filters(i32* %66, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %41, %20
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @vita2d_texture_get_datap(i32* %77)
  %79 = load %struct.retro_framebuffer*, %struct.retro_framebuffer** %4, align 8
  %80 = getelementptr inbounds %struct.retro_framebuffer, %struct.retro_framebuffer* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @vita2d_texture_get_stride(i32* %83)
  %85 = load %struct.retro_framebuffer*, %struct.retro_framebuffer** %4, align 8
  %86 = getelementptr inbounds %struct.retro_framebuffer, %struct.retro_framebuffer* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %74
  %92 = load i32, i32* @RETRO_PIXEL_FORMAT_XRGB8888, align 4
  br label %95

93:                                               ; preds = %74
  %94 = load i32, i32* @RETRO_PIXEL_FORMAT_RGB565, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = load %struct.retro_framebuffer*, %struct.retro_framebuffer** %4, align 8
  %98 = getelementptr inbounds %struct.retro_framebuffer, %struct.retro_framebuffer* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 8
  %99 = load %struct.retro_framebuffer*, %struct.retro_framebuffer** %4, align 8
  %100 = getelementptr inbounds %struct.retro_framebuffer, %struct.retro_framebuffer* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  ret i32 1
}

declare dso_local i32 @vita2d_wait_rendering_done(...) #1

declare dso_local i32 @vita2d_free_texture(i32*) #1

declare dso_local i32* @vita2d_create_empty_texture_format(i64, i64, i32) #1

declare dso_local i32 @vita2d_texture_set_filters(i32*, i32, i32) #1

declare dso_local i32 @vita2d_texture_get_datap(i32*) #1

declare dso_local i32 @vita2d_texture_get_stride(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
