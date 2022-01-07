; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTexUtil.c_raspitexutil_gl_init_1_0.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTexUtil.c_raspitexutil_gl_init_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@EGL_RED_SIZE = common dso_local global i32 0, align 4
@EGL_GREEN_SIZE = common dso_local global i32 0, align 4
@EGL_BLUE_SIZE = common dso_local global i32 0, align 4
@EGL_ALPHA_SIZE = common dso_local global i32 0, align 4
@EGL_DEPTH_SIZE = common dso_local global i32 0, align 4
@EGL_RENDERABLE_TYPE = common dso_local global i32 0, align 4
@EGL_OPENGL_ES_BIT = common dso_local global i32 0, align 4
@EGL_NONE = common dso_local global i32 0, align 4
@EGL_CONTEXT_CLIENT_VERSION = common dso_local global i32 0, align 4
@GL_TEXTURE_EXTERNAL_OES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @raspitexutil_gl_init_1_0(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [13 x i32], align 16
  %6 = alloca [3 x i32], align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 0
  %11 = load i32, i32* @EGL_RED_SIZE, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 8, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* @EGL_GREEN_SIZE, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 8, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* @EGL_BLUE_SIZE, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 8, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* @EGL_ALPHA_SIZE, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 8, i32* %21, align 4
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* @EGL_DEPTH_SIZE, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 16, i32* %24, align 4
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* @EGL_RENDERABLE_TYPE, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  %28 = load i32, i32* @EGL_OPENGL_ES_BIT, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds i32, i32* %27, i64 1
  %30 = load i32, i32* @EGL_NONE, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %32 = load i32, i32* @EGL_CONTEXT_CLIENT_VERSION, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 1, i32* %33, align 4
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* @EGL_NONE, align 4
  store i32 %35, i32* %34, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %1
  %39 = getelementptr inbounds [13 x i32], [13 x i32]* %5, i64 0, i64 0
  store i32* %39, i32** %4, align 8
  br label %40

40:                                               ; preds = %38, %1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %44 = call i32 @raspitexutil_gl_common(%struct.TYPE_5__* %41, i32* %42, i32* %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %54

48:                                               ; preds = %40
  %49 = load i32, i32* @GL_TEXTURE_EXTERNAL_OES, align 4
  %50 = call i32 @glEnable(i32 %49)
  %51 = call i32 @GLCHK(i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = call i32 @raspitexutil_create_textures(%struct.TYPE_5__* %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %47
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @raspitexutil_gl_common(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @GLCHK(i32) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @raspitexutil_create_textures(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
