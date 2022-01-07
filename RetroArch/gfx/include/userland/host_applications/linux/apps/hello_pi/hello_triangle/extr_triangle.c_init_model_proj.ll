; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle/extr_triangle.c_init_model_proj.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_triangle/extr_triangle.c_init_model_proj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@GL_PERSPECTIVE_CORRECTION_HINT = common dso_local global i32 0, align 4
@GL_NICEST = common dso_local global i32 0, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@M_PI = common dso_local global double 0.000000e+00, align 8
@GL_VERTEX_ARRAY = common dso_local global i32 0, align 4
@GL_BYTE = common dso_local global i32 0, align 4
@quadx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @init_model_proj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_model_proj(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store float 1.000000e+00, float* %3, align 4
  store float 5.000000e+02, float* %4, align 4
  %7 = load i32, i32* @GL_PERSPECTIVE_CORRECTION_HINT, align 4
  %8 = load i32, i32* @GL_NICEST, align 4
  %9 = call i32 @glHint(i32 %7, i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @glViewport(i32 0, i32 0, i32 %13, i32 %17)
  %19 = load i32, i32* @GL_PROJECTION, align 4
  %20 = call i32 @glMatrixMode(i32 %19)
  %21 = call i32 (...) @glLoadIdentity()
  %22 = load float, float* %3, align 4
  %23 = load double, double* @M_PI, align 8
  %24 = fmul double 1.250000e-01, %23
  %25 = call i64 @tan(double %24)
  %26 = sitofp i64 %25 to float
  %27 = fmul float %22, %26
  store float %27, float* %5, align 4
  %28 = load float, float* %5, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = sitofp i64 %31 to float
  %33 = fmul float %28, %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sitofp i64 %36 to float
  %38 = fdiv float %33, %37
  store float %38, float* %6, align 4
  %39 = load float, float* %6, align 4
  %40 = fneg float %39
  %41 = load float, float* %6, align 4
  %42 = load float, float* %5, align 4
  %43 = fneg float %42
  %44 = load float, float* %5, align 4
  %45 = load float, float* %3, align 4
  %46 = load float, float* %4, align 4
  %47 = call i32 @glFrustumf(float %40, float %41, float %43, float %44, float %45, float %46)
  %48 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %49 = call i32 @glEnableClientState(i32 %48)
  %50 = load i32, i32* @GL_BYTE, align 4
  %51 = load i32, i32* @quadx, align 4
  %52 = call i32 @glVertexPointer(i32 3, i32 %50, i32 0, i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = call i32 @reset_model(%struct.TYPE_4__* %53)
  ret void
}

declare dso_local i32 @glHint(i32, i32) #1

declare dso_local i32 @glViewport(i32, i32, i32, i32) #1

declare dso_local i32 @glMatrixMode(i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i64 @tan(double) #1

declare dso_local i32 @glFrustumf(float, float, float, float, float, float) #1

declare dso_local i32 @glEnableClientState(i32) #1

declare dso_local i32 @glVertexPointer(i32, i32, i32, i32) #1

declare dso_local i32 @reset_model(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
