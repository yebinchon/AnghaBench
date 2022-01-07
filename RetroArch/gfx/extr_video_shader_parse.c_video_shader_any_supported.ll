; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_any_supported.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/extr_video_shader_parse.c_video_shader_any_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@GFX_CTX_FLAGS_SHADERS_SLANG = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_SHADERS_GLSL = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_SHADERS_CG = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_SHADERS_HLSL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @video_shader_any_supported() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i64 0, i64* %2, align 8
  %3 = call i32 @video_context_driver_get_flags(%struct.TYPE_3__* %1)
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i32, i32* @GFX_CTX_FLAGS_SHADERS_SLANG, align 4
  %7 = call i64 @BIT32_GET(i64 %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @GFX_CTX_FLAGS_SHADERS_GLSL, align 4
  %13 = call i64 @BIT32_GET(i64 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @GFX_CTX_FLAGS_SHADERS_CG, align 4
  %19 = call i64 @BIT32_GET(i64 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @GFX_CTX_FLAGS_SHADERS_HLSL, align 4
  %25 = call i64 @BIT32_GET(i64 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %21, %15, %9, %0
  %28 = phi i1 [ true, %15 ], [ true, %9 ], [ true, %0 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i32 @video_context_driver_get_flags(%struct.TYPE_3__*) #1

declare dso_local i64 @BIT32_GET(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
