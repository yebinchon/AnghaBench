; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_ps2_gfx.c_prim_texture.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_ps2_gfx.c_prim_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, float }
%struct.TYPE_7__ = type { float, float }
%struct.retro_hw_ps2_insets = type { float, float, float, float }

@GS_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, <2 x float>, <2 x float>)* @prim_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prim_texture(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, <2 x float> %4, <2 x float> %5) #0 {
  %7 = alloca %struct.retro_hw_ps2_insets, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = bitcast %struct.retro_hw_ps2_insets* %7 to { <2 x float>, <2 x float> }*
  %24 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %23, i32 0, i32 0
  store <2 x float> %4, <2 x float>* %24, align 4
  %25 = getelementptr inbounds { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %23, i32 0, i32 1
  store <2 x float> %5, <2 x float>* %25, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load float, float* %27, align 4
  %29 = getelementptr inbounds %struct.retro_hw_ps2_insets, %struct.retro_hw_ps2_insets* %7, i32 0, i32 0
  %30 = load float, float* %29, align 4
  %31 = fsub float %28, %30
  %32 = getelementptr inbounds %struct.retro_hw_ps2_insets, %struct.retro_hw_ps2_insets* %7, i32 0, i32 1
  %33 = load float, float* %32, align 4
  %34 = fsub float %31, %33
  store float %34, float* %16, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load float, float* %36, align 4
  %38 = getelementptr inbounds %struct.retro_hw_ps2_insets, %struct.retro_hw_ps2_insets* %7, i32 0, i32 2
  %39 = load float, float* %38, align 4
  %40 = fsub float %37, %39
  %41 = getelementptr inbounds %struct.retro_hw_ps2_insets, %struct.retro_hw_ps2_insets* %7, i32 0, i32 3
  %42 = load float, float* %41, align 4
  %43 = fsub float %40, %42
  store float %43, float* %17, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %6
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load float, float* %48, align 4
  %50 = load float, float* %16, align 4
  %51 = fdiv float %49, %50
  store float %51, float* %18, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load float, float* %53, align 4
  %55 = load float, float* %17, align 4
  %56 = fdiv float %54, %55
  store float %56, float* %19, align 4
  %57 = load float, float* %18, align 4
  %58 = load float, float* %19, align 4
  %59 = call float @MIN(float %57, float %58)
  store float %59, float* %20, align 4
  %60 = load float, float* %16, align 4
  %61 = load float, float* %20, align 4
  %62 = fmul float %60, %61
  store float %62, float* %21, align 4
  %63 = load float, float* %17, align 4
  %64 = load float, float* %20, align 4
  %65 = fmul float %63, %64
  store float %65, float* %22, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load float, float* %67, align 4
  %69 = load float, float* %21, align 4
  %70 = fsub float %68, %69
  %71 = fdiv float %70, 2.000000e+00
  store float %71, float* %12, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load float, float* %73, align 4
  %75 = load float, float* %22, align 4
  %76 = fsub float %74, %75
  %77 = fdiv float %76, 2.000000e+00
  store float %77, float* %13, align 4
  %78 = load float, float* %21, align 4
  %79 = load float, float* %12, align 4
  %80 = fadd float %78, %79
  store float %80, float* %14, align 4
  %81 = load float, float* %22, align 4
  %82 = load float, float* %13, align 4
  %83 = fadd float %81, %82
  store float %83, float* %15, align 4
  br label %91

84:                                               ; preds = %6
  store float 0.000000e+00, float* %12, align 4
  store float 0.000000e+00, float* %13, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load float, float* %86, align 4
  store float %87, float* %14, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load float, float* %89, align 4
  store float %90, float* %15, align 4
  br label %91

91:                                               ; preds = %84, %46
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = load float, float* %12, align 4
  %95 = load float, float* %13, align 4
  %96 = getelementptr inbounds %struct.retro_hw_ps2_insets, %struct.retro_hw_ps2_insets* %7, i32 0, i32 0
  %97 = load float, float* %96, align 4
  %98 = getelementptr inbounds %struct.retro_hw_ps2_insets, %struct.retro_hw_ps2_insets* %7, i32 0, i32 2
  %99 = load float, float* %98, align 4
  %100 = load float, float* %14, align 4
  %101 = load float, float* %15, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load float, float* %103, align 4
  %105 = getelementptr inbounds %struct.retro_hw_ps2_insets, %struct.retro_hw_ps2_insets* %7, i32 0, i32 1
  %106 = load float, float* %105, align 4
  %107 = fsub float %104, %106
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load float, float* %109, align 4
  %111 = getelementptr inbounds %struct.retro_hw_ps2_insets, %struct.retro_hw_ps2_insets* %7, i32 0, i32 3
  %112 = load float, float* %111, align 4
  %113 = fsub float %110, %112
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @GS_TEXT, align 4
  %116 = call i32 @gsKit_prim_sprite_texture(%struct.TYPE_8__* %92, %struct.TYPE_7__* %93, float %94, float %95, float %97, float %99, float %100, float %101, float %107, float %113, i32 %114, i32 %115)
  ret void
}

declare dso_local float @MIN(float, float) #1

declare dso_local i32 @gsKit_prim_sprite_texture(%struct.TYPE_8__*, %struct.TYPE_7__*, float, float, float, float, float, float, float, float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
