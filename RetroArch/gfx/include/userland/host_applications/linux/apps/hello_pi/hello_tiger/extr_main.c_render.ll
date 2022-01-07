; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_tiger/extr_main.c_render.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_tiger/extr_main.c_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@renderWidth = common dso_local global i32 0, align 4
@renderHeight = common dso_local global i32 0, align 4
@__const.render.clearColor = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@tigerMaxX = common dso_local global i32 0, align 4
@tigerMinX = common dso_local global i32 0, align 4
@egldisplay = common dso_local global i32 0, align 4
@eglsurface = common dso_local global i32 0, align 4
@VG_CLEAR_COLOR = common dso_local global i32 0, align 4
@tigerMinY = common dso_local global i32 0, align 4
@tigerMaxY = common dso_local global i32 0, align 4
@tiger = common dso_local global i32 0, align 4
@VG_NO_ERROR = common dso_local global i64 0, align 8
@EGL_SUCCESS = common dso_local global i64 0, align 8
@rotateN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x float], align 16
  %6 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @renderWidth, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @renderHeight, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %10, %2
  %15 = bitcast [4 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([4 x float]* @__const.render.clearColor to i8*), i64 16, i1 false)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @tigerMaxX, align 4
  %18 = load i32, i32* @tigerMinX, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sdiv i32 %16, %19
  %21 = sitofp i32 %20 to float
  store float %21, float* %6, align 4
  %22 = load i32, i32* @egldisplay, align 4
  %23 = load i32, i32* @eglsurface, align 4
  %24 = call i32 @eglSwapBuffers(i32 %22, i32 %23)
  %25 = load i32, i32* @VG_CLEAR_COLOR, align 4
  %26 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  %27 = call i32 @vgSetfv(i32 %25, i32 4, float* %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @vgClear(i32 0, i32 0, i32 %28, i32 %29)
  %31 = call i32 (...) @vgLoadIdentity()
  %32 = load float, float* %6, align 4
  %33 = load float, float* %6, align 4
  %34 = call i32 @vgScale(float %32, float %33)
  %35 = load i32, i32* @tigerMinX, align 4
  %36 = sub nsw i32 0, %35
  %37 = load i32, i32* @tigerMinY, align 4
  %38 = sub nsw i32 0, %37
  %39 = sitofp i32 %38 to float
  %40 = load i32, i32* %4, align 4
  %41 = sitofp i32 %40 to float
  %42 = load float, float* %6, align 4
  %43 = fdiv float %41, %42
  %44 = load i32, i32* @tigerMaxY, align 4
  %45 = load i32, i32* @tigerMinY, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sitofp i32 %46 to float
  %48 = fsub float %43, %47
  %49 = fmul float 5.000000e-01, %48
  %50 = fadd float %39, %49
  %51 = fptosi float %50 to i32
  %52 = call i32 @vgTranslate(i32 %36, i32 %51)
  %53 = load i32, i32* @tiger, align 4
  %54 = call i32 @PS_render(i32 %53)
  %55 = call i64 (...) @vgGetError()
  %56 = load i64, i64* @VG_NO_ERROR, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %3, align 4
  store i32 %60, i32* @renderWidth, align 4
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* @renderHeight, align 4
  br label %62

62:                                               ; preds = %14, %10
  %63 = load i32, i32* @egldisplay, align 4
  %64 = load i32, i32* @eglsurface, align 4
  %65 = call i32 @eglSwapBuffers(i32 %63, i32 %64)
  %66 = call i64 (...) @eglGetError()
  %67 = load i64, i64* @EGL_SUCCESS, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @eglSwapBuffers(i32, i32) #2

declare dso_local i32 @vgSetfv(i32, i32, float*) #2

declare dso_local i32 @vgClear(i32, i32, i32, i32) #2

declare dso_local i32 @vgLoadIdentity(...) #2

declare dso_local i32 @vgScale(float, float) #2

declare dso_local i32 @vgTranslate(i32, i32) #2

declare dso_local i32 @PS_render(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @vgGetError(...) #2

declare dso_local i64 @eglGetError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
