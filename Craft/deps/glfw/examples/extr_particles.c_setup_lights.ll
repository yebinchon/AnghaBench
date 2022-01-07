; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_particles.c_setup_lights.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_particles.c_setup_lights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_LIGHT1 = common dso_local global i32 0, align 4
@GL_POSITION = common dso_local global i32 0, align 4
@GL_AMBIENT = common dso_local global i32 0, align 4
@GL_DIFFUSE = common dso_local global i32 0, align 4
@GL_SPECULAR = common dso_local global i32 0, align 4
@GL_LIGHT2 = common dso_local global i32 0, align 4
@GL_LIGHT3 = common dso_local global i32 0, align 4
@glow_pos = common dso_local global float* null, align 8
@glow_color = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_lights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_lights() #0 {
  %1 = alloca [4 x float], align 16
  %2 = alloca [4 x float], align 16
  %3 = alloca [4 x float], align 16
  %4 = alloca [4 x float], align 16
  %5 = alloca [4 x float], align 16
  %6 = alloca [4 x float], align 16
  %7 = alloca [4 x float], align 16
  %8 = alloca [4 x float], align 16
  %9 = getelementptr inbounds [4 x float], [4 x float]* %1, i64 0, i64 0
  store float 0.000000e+00, float* %9, align 16
  %10 = getelementptr inbounds [4 x float], [4 x float]* %1, i64 0, i64 1
  store float -9.000000e+00, float* %10, align 4
  %11 = getelementptr inbounds [4 x float], [4 x float]* %1, i64 0, i64 2
  store float 8.000000e+00, float* %11, align 8
  %12 = getelementptr inbounds [4 x float], [4 x float]* %1, i64 0, i64 3
  store float 1.000000e+00, float* %12, align 4
  %13 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 0
  store float 0x3FC99999A0000000, float* %13, align 16
  %14 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 1
  store float 0x3FC99999A0000000, float* %14, align 4
  %15 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 2
  store float 0x3FC99999A0000000, float* %15, align 8
  %16 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 3
  store float 1.000000e+00, float* %16, align 4
  %17 = getelementptr inbounds [4 x float], [4 x float]* %3, i64 0, i64 0
  store float 0x3FE99999A0000000, float* %17, align 16
  %18 = getelementptr inbounds [4 x float], [4 x float]* %3, i64 0, i64 1
  store float 0x3FD99999A0000000, float* %18, align 4
  %19 = getelementptr inbounds [4 x float], [4 x float]* %3, i64 0, i64 2
  store float 0x3FC99999A0000000, float* %19, align 8
  %20 = getelementptr inbounds [4 x float], [4 x float]* %3, i64 0, i64 3
  store float 1.000000e+00, float* %20, align 4
  %21 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  store float 1.000000e+00, float* %21, align 16
  %22 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 1
  store float 0x3FE3333340000000, float* %22, align 4
  %23 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 2
  store float 0x3FC99999A0000000, float* %23, align 8
  %24 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 3
  store float 0.000000e+00, float* %24, align 4
  %25 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  store float -1.500000e+01, float* %25, align 16
  %26 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 1
  store float 1.200000e+01, float* %26, align 4
  %27 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 2
  store float 1.500000e+00, float* %27, align 8
  %28 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 3
  store float 1.000000e+00, float* %28, align 4
  %29 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 0
  store float 0.000000e+00, float* %29, align 16
  %30 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 1
  store float 0.000000e+00, float* %30, align 4
  %31 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 2
  store float 0.000000e+00, float* %31, align 8
  %32 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 3
  store float 1.000000e+00, float* %32, align 4
  %33 = getelementptr inbounds [4 x float], [4 x float]* %7, i64 0, i64 0
  store float 0x3FC99999A0000000, float* %33, align 16
  %34 = getelementptr inbounds [4 x float], [4 x float]* %7, i64 0, i64 1
  store float 0x3FD99999A0000000, float* %34, align 4
  %35 = getelementptr inbounds [4 x float], [4 x float]* %7, i64 0, i64 2
  store float 0x3FE99999A0000000, float* %35, align 8
  %36 = getelementptr inbounds [4 x float], [4 x float]* %7, i64 0, i64 3
  store float 1.000000e+00, float* %36, align 4
  %37 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  store float 0x3FC99999A0000000, float* %37, align 16
  %38 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 1
  store float 0x3FE3333340000000, float* %38, align 4
  %39 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 2
  store float 1.000000e+00, float* %39, align 8
  %40 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 3
  store float 0.000000e+00, float* %40, align 4
  %41 = load i32, i32* @GL_LIGHT1, align 4
  %42 = load i32, i32* @GL_POSITION, align 4
  %43 = getelementptr inbounds [4 x float], [4 x float]* %1, i64 0, i64 0
  %44 = call i32 @glLightfv(i32 %41, i32 %42, float* %43)
  %45 = load i32, i32* @GL_LIGHT1, align 4
  %46 = load i32, i32* @GL_AMBIENT, align 4
  %47 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 0
  %48 = call i32 @glLightfv(i32 %45, i32 %46, float* %47)
  %49 = load i32, i32* @GL_LIGHT1, align 4
  %50 = load i32, i32* @GL_DIFFUSE, align 4
  %51 = getelementptr inbounds [4 x float], [4 x float]* %3, i64 0, i64 0
  %52 = call i32 @glLightfv(i32 %49, i32 %50, float* %51)
  %53 = load i32, i32* @GL_LIGHT1, align 4
  %54 = load i32, i32* @GL_SPECULAR, align 4
  %55 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %56 = call i32 @glLightfv(i32 %53, i32 %54, float* %55)
  %57 = load i32, i32* @GL_LIGHT2, align 4
  %58 = load i32, i32* @GL_POSITION, align 4
  %59 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  %60 = call i32 @glLightfv(i32 %57, i32 %58, float* %59)
  %61 = load i32, i32* @GL_LIGHT2, align 4
  %62 = load i32, i32* @GL_AMBIENT, align 4
  %63 = getelementptr inbounds [4 x float], [4 x float]* %6, i64 0, i64 0
  %64 = call i32 @glLightfv(i32 %61, i32 %62, float* %63)
  %65 = load i32, i32* @GL_LIGHT2, align 4
  %66 = load i32, i32* @GL_DIFFUSE, align 4
  %67 = getelementptr inbounds [4 x float], [4 x float]* %7, i64 0, i64 0
  %68 = call i32 @glLightfv(i32 %65, i32 %66, float* %67)
  %69 = load i32, i32* @GL_LIGHT2, align 4
  %70 = load i32, i32* @GL_SPECULAR, align 4
  %71 = getelementptr inbounds [4 x float], [4 x float]* %8, i64 0, i64 0
  %72 = call i32 @glLightfv(i32 %69, i32 %70, float* %71)
  %73 = load i32, i32* @GL_LIGHT3, align 4
  %74 = load i32, i32* @GL_POSITION, align 4
  %75 = load float*, float** @glow_pos, align 8
  %76 = call i32 @glLightfv(i32 %73, i32 %74, float* %75)
  %77 = load i32, i32* @GL_LIGHT3, align 4
  %78 = load i32, i32* @GL_DIFFUSE, align 4
  %79 = load float*, float** @glow_color, align 8
  %80 = call i32 @glLightfv(i32 %77, i32 %78, float* %79)
  %81 = load i32, i32* @GL_LIGHT3, align 4
  %82 = load i32, i32* @GL_SPECULAR, align 4
  %83 = load float*, float** @glow_color, align 8
  %84 = call i32 @glLightfv(i32 %81, i32 %82, float* %83)
  %85 = load i32, i32* @GL_LIGHT1, align 4
  %86 = call i32 @glEnable(i32 %85)
  %87 = load i32, i32* @GL_LIGHT2, align 4
  %88 = call i32 @glEnable(i32 %87)
  %89 = load i32, i32* @GL_LIGHT3, align 4
  %90 = call i32 @glEnable(i32 %89)
  ret void
}

declare dso_local i32 @glLightfv(i32, i32, float*) #1

declare dso_local i32 @glEnable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
