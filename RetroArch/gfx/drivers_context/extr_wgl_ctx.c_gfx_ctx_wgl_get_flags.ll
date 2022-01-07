; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wgl_ctx.c_gfx_ctx_wgl_get_flags.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_wgl_ctx.c_gfx_ctx_wgl_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@win32_api = common dso_local global i32 0, align 4
@wgl_adaptive_vsync = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_ADAPTIVE_VSYNC = common dso_local global i32 0, align 4
@win32_core_hw_context_enable = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_GL_CORE_CONTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"gl1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"glcore\00", align 1
@GFX_CTX_FLAGS_SHADERS_CG = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_SHADERS_GLSL = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_SHADERS_SLANG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_ctx_wgl_get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_ctx_wgl_get_flags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @win32_api, align 4
  switch i32 %4, label %34 [
    i32 129, label %5
    i32 128, label %32
    i32 130, label %33
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @wgl_adaptive_vsync, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @GFX_CTX_FLAGS_ADAPTIVE_VSYNC, align 4
  %11 = call i32 @BIT32_SET(i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %5
  %13 = load i32, i32* @win32_core_hw_context_enable, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @GFX_CTX_FLAGS_GL_CORE_CONTEXT, align 4
  %18 = call i32 @BIT32_SET(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %12
  %20 = call i32 (...) @video_driver_get_ident()
  %21 = call i32 @string_is_equal(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %31

24:                                               ; preds = %19
  %25 = call i32 (...) @video_driver_get_ident()
  %26 = call i32 @string_is_equal(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %30

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %28
  br label %31

31:                                               ; preds = %30, %23
  br label %35

32:                                               ; preds = %1
  br label %35

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %1, %33
  br label %35

35:                                               ; preds = %34, %32, %31
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @BIT32_SET(i32, i32) #1

declare dso_local i32 @string_is_equal(i32, i8*) #1

declare dso_local i32 @video_driver_get_ident(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
