; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_is_supported.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_is_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@GFX_CTX_FLAGS_NONE = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_SHADERS_SLANG = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_SHADERS_GLSL = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_SHADERS_CG = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_SHADERS_HLSL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @video_shader_is_supported(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFX_CTX_FLAGS_NONE, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %18 [
    i32 128, label %9
    i32 131, label %11
    i32 132, label %13
    i32 130, label %15
    i32 129, label %17
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @GFX_CTX_FLAGS_SHADERS_SLANG, align 4
  store i32 %10, i32* %5, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load i32, i32* @GFX_CTX_FLAGS_SHADERS_GLSL, align 4
  store i32 %12, i32* %5, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @GFX_CTX_FLAGS_SHADERS_CG, align 4
  store i32 %14, i32* %5, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @GFX_CTX_FLAGS_SHADERS_HLSL, align 4
  store i32 %16, i32* %5, align 4
  br label %19

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %1, %17
  store i32 0, i32* %2, align 4
  br label %25

19:                                               ; preds = %15, %13, %11, %9
  %20 = call i32 @video_context_driver_get_flags(%struct.TYPE_3__* %4)
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @BIT32_GET(i64 %22, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @video_context_driver_get_flags(%struct.TYPE_3__*) #1

declare dso_local i32 @BIT32_GET(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
