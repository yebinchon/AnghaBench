; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_drm_ctx.c_gfx_ctx_drm_get_flags.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_drm_ctx.c_gfx_ctx_drm_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@GFX_CTX_FLAGS_CUSTOMIZABLE_SWAPCHAIN_IMAGES = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_GL_CORE_CONTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"glcore\00", align 1
@GFX_CTX_FLAGS_SHADERS_GLSL = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_SHADERS_SLANG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_ctx_drm_get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_ctx_drm_get_flags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @GFX_CTX_FLAGS_CUSTOMIZABLE_SWAPCHAIN_IMAGES, align 4
  %9 = call i32 @BIT32_SET(i32 %7, i32 %8)
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @GFX_CTX_FLAGS_GL_CORE_CONTEXT, align 4
  %17 = call i32 @BIT32_SET(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = call i32 (...) @video_driver_get_ident()
  %20 = call i64 @string_is_equal(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @GFX_CTX_FLAGS_SHADERS_GLSL, align 4
  %26 = call i32 @BIT32_SET(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %22
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @BIT32_SET(i32, i32) #1

declare dso_local i64 @string_is_equal(i32, i8*) #1

declare dso_local i32 @video_driver_get_ident(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
