; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_vidtex.c_vidtex_gl_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/android/apps/vidtex/extr_vidtex.c_vidtex_gl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@EGL_RED_SIZE = common dso_local global i32 0, align 4
@EGL_GREEN_SIZE = common dso_local global i32 0, align 4
@EGL_BLUE_SIZE = common dso_local global i32 0, align 4
@EGL_DEPTH_SIZE = common dso_local global i32 0, align 4
@EGL_NONE = common dso_local global i32 0, align 4
@EGL_DEFAULT_DISPLAY = common dso_local global i32 0, align 4
@GL_FLAT = common dso_local global i32 0, align 4
@GL_DITHER = common dso_local global i32 0, align 4
@GL_SCISSOR_TEST = common dso_local global i32 0, align 4
@GL_TEXTURE_EXTERNAL_OES = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @vidtex_gl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidtex_gl_init(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [9 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %10 = load i32, i32* @EGL_RED_SIZE, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 8, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* @EGL_GREEN_SIZE, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 8, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* @EGL_BLUE_SIZE, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 8, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* @EGL_DEPTH_SIZE, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* @EGL_NONE, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i32, i32* @EGL_DEFAULT_DISPLAY, align 4
  %24 = call i32 @eglGetDisplay(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @eglInitialize(i32 %29, i32 0, i32 0)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %6, i64 0, i64 0
  %35 = call i32 @eglChooseConfig(i32 %33, i32* %34, i32* %7, i32 1, i32* %8)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @eglCreateWindowSurface(i32 %38, i32 %39, i32 %40, i32* null)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @eglCreateContext(i32 %46, i32 %47, i32* null, i32* null)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @eglMakeCurrent(i32 %53, i32 %56, i32 %59, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = call i32 @vidtex_gl_term(%struct.TYPE_4__* %66)
  store i32 -1, i32* %3, align 4
  br label %82

68:                                               ; preds = %2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @glGenTextures(i32 1, i32* %70)
  %72 = load i32, i32* @GL_FLAT, align 4
  %73 = call i32 @glShadeModel(i32 %72)
  %74 = load i32, i32* @GL_DITHER, align 4
  %75 = call i32 @glDisable(i32 %74)
  %76 = load i32, i32* @GL_SCISSOR_TEST, align 4
  %77 = call i32 @glDisable(i32 %76)
  %78 = load i32, i32* @GL_TEXTURE_EXTERNAL_OES, align 4
  %79 = call i32 @glEnable(i32 %78)
  %80 = load i32, i32* @GL_TEXTURE_2D, align 4
  %81 = call i32 @glDisable(i32 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %68, %65
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @eglGetDisplay(i32) #1

declare dso_local i32 @eglInitialize(i32, i32, i32) #1

declare dso_local i32 @eglChooseConfig(i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @eglCreateWindowSurface(i32, i32, i32, i32*) #1

declare dso_local i32 @eglCreateContext(i32, i32, i32*, i32*) #1

declare dso_local i32 @eglMakeCurrent(i32, i32, i32, i32) #1

declare dso_local i32 @vidtex_gl_term(%struct.TYPE_4__*) #1

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i32 @glShadeModel(i32) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @glEnable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
