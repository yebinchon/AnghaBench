; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_set_texture_tint_color_uniform.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libvita2d/source/extr_vita2d_texture.c_set_texture_tint_color_uniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_vita2d_context = common dso_local global i32 0, align 4
@_vita2d_textureTintColorParam = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_texture_tint_color_uniform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_texture_tint_color_uniform(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca float*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @_vita2d_context, align 4
  %6 = call i32 @sceGxmReserveFragmentDefaultUniformBuffer(i32 %5, i8** %3)
  %7 = call float* @vita2d_pool_memalign(i32 16, i32 4)
  store float* %7, float** %4, align 8
  %8 = load i32, i32* %2, align 4
  %9 = lshr i32 %8, 0
  %10 = and i32 %9, 255
  %11 = uitofp i32 %10 to float
  %12 = fdiv float %11, 2.550000e+02
  %13 = load float*, float** %4, align 8
  %14 = getelementptr inbounds float, float* %13, i64 0
  store float %12, float* %14, align 4
  %15 = load i32, i32* %2, align 4
  %16 = lshr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = uitofp i32 %17 to float
  %19 = fdiv float %18, 2.550000e+02
  %20 = load float*, float** %4, align 8
  %21 = getelementptr inbounds float, float* %20, i64 1
  store float %19, float* %21, align 4
  %22 = load i32, i32* %2, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = uitofp i32 %24 to float
  %26 = fdiv float %25, 2.550000e+02
  %27 = load float*, float** %4, align 8
  %28 = getelementptr inbounds float, float* %27, i64 2
  store float %26, float* %28, align 4
  %29 = load i32, i32* %2, align 4
  %30 = lshr i32 %29, 24
  %31 = and i32 %30, 255
  %32 = uitofp i32 %31 to float
  %33 = fdiv float %32, 2.550000e+02
  %34 = load float*, float** %4, align 8
  %35 = getelementptr inbounds float, float* %34, i64 3
  store float %33, float* %35, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* @_vita2d_textureTintColorParam, align 4
  %38 = load float*, float** %4, align 8
  %39 = call i32 @sceGxmSetUniformDataF(i8* %36, i32 %37, i32 0, i32 4, float* %38)
  ret void
}

declare dso_local i32 @sceGxmReserveFragmentDefaultUniformBuffer(i32, i8**) #1

declare dso_local float* @vita2d_pool_memalign(i32, i32) #1

declare dso_local i32 @sceGxmSetUniformDataF(i8*, i32, i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
