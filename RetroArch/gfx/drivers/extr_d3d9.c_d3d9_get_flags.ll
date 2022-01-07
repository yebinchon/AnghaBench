; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_get_flags.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_d3d9.c_d3d9_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFX_CTX_FLAGS_BLACK_FRAME_INSERTION = common dso_local global i32 0, align 4
@GFX_CTX_FLAGS_MENU_FRAME_FILTERING = common dso_local global i32 0, align 4
@supported_shader_type = common dso_local global i64 0, align 8
@RARCH_SHADER_CG = common dso_local global i64 0, align 8
@GFX_CTX_FLAGS_SHADERS_CG = common dso_local global i32 0, align 4
@RARCH_SHADER_HLSL = common dso_local global i64 0, align 8
@GFX_CTX_FLAGS_SHADERS_HLSL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @d3d9_get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d9_get_flags(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @GFX_CTX_FLAGS_BLACK_FRAME_INSERTION, align 4
  %6 = call i32 @BIT32_SET(i32 %4, i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @GFX_CTX_FLAGS_MENU_FRAME_FILTERING, align 4
  %9 = call i32 @BIT32_SET(i32 %7, i32 %8)
  %10 = load i64, i64* @supported_shader_type, align 8
  %11 = load i64, i64* @RARCH_SHADER_CG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @GFX_CTX_FLAGS_SHADERS_CG, align 4
  %16 = call i32 @BIT32_SET(i32 %14, i32 %15)
  br label %26

17:                                               ; preds = %1
  %18 = load i64, i64* @supported_shader_type, align 8
  %19 = load i64, i64* @RARCH_SHADER_HLSL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @GFX_CTX_FLAGS_SHADERS_HLSL, align 4
  %24 = call i32 @BIT32_SET(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @BIT32_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
