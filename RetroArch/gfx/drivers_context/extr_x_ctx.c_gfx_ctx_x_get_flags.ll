; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_x_ctx.c_gfx_ctx_x_get_flags.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_x_ctx.c_gfx_ctx_x_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@x_api = common dso_local global i32 0, align 4
@x_adaptive_vsync = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_ADAPTIVE_VSYNC = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_GL_CORE_CONTEXT = common dso_local global i32 0, align 4
@x_enable_msaa = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_MULTISAMPLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"gl1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"glcore\00", align 1
@GFX_CTX_FLAGS_SHADERS_CG = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_SHADERS_GLSL = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_SHADERS_SLANG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_ctx_x_get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_ctx_x_get_flags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %4, align 8
  %7 = load i32, i32* @x_api, align 4
  switch i32 %7, label %51 [
    i32 130, label %8
    i32 129, label %8
    i32 128, label %49
    i32 131, label %50
  ]

8:                                                ; preds = %1, %1
  %9 = load i32, i32* @x_adaptive_vsync, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @GFX_CTX_FLAGS_ADAPTIVE_VSYNC, align 4
  %14 = call i32 @BIT32_SET(i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %11, %8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @GFX_CTX_FLAGS_GL_CORE_CONTEXT, align 4
  %28 = call i32 @BIT32_SET(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* @x_enable_msaa, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @GFX_CTX_FLAGS_MULTISAMPLING, align 4
  %35 = call i32 @BIT32_SET(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %29
  %37 = call i32 (...) @video_driver_get_ident()
  %38 = call i32 @string_is_equal(i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %48

41:                                               ; preds = %36
  %42 = call i32 (...) @video_driver_get_ident()
  %43 = call i32 @string_is_equal(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %47

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %45
  br label %48

48:                                               ; preds = %47, %40
  br label %52

49:                                               ; preds = %1
  br label %52

50:                                               ; preds = %1
  br label %51

51:                                               ; preds = %1, %50
  br label %52

52:                                               ; preds = %51, %49, %48
  %53 = load i32, i32* %3, align 4
  ret i32 %53
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
