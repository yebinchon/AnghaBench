; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTexUtil.c_raspitexutil_gl_common.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/extr_RaspiTexUtil.c_raspitexutil_gl_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__, i32, i32* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: No native window\00", align 1
@EGL_DEFAULT_DISPLAY = common dso_local global i32 0, align 4
@EGL_NO_DISPLAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"%s: Failed to get EGL display\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: eglInitialize failed\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: eglChooseConfig failed\00", align 1
@EGL_NO_SURFACE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"%s: eglCreateWindowSurface failed\00", align 1
@EGL_NO_CONTEXT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"%s: eglCreateContext failed\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"%s: Failed to activate EGL context\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"%s: EGL error 0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*)* @raspitexutil_gl_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raspitexutil_gl_common(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @VCOS_FUNCTION, align 4
  %11 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @VCOS_FUNCTION, align 4
  %18 = call i32 (i8*, i32, ...) @vcos_log_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %107

19:                                               ; preds = %3
  %20 = load i32, i32* @EGL_DEFAULT_DISPLAY, align 4
  %21 = call i64 @eglGetDisplay(i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EGL_NO_DISPLAY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @VCOS_FUNCTION, align 4
  %31 = call i32 (i8*, i32, ...) @vcos_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %107

32:                                               ; preds = %19
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @eglInitialize(i64 %35, i32 0, i32 0)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @VCOS_FUNCTION, align 4
  %40 = call i32 (i8*, i32, ...) @vcos_log_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  br label %107

41:                                               ; preds = %32
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @eglChooseConfig(i64 %44, i32* %45, i32* %8, i32 1, i32* %9)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @VCOS_FUNCTION, align 4
  %50 = call i32 (i8*, i32, ...) @vcos_log_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  br label %107

51:                                               ; preds = %41
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @eglCreateWindowSurface(i64 %54, i32 %55, i32* %58, i32* null)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @EGL_NO_SURFACE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = load i32, i32* @VCOS_FUNCTION, align 4
  %69 = call i32 (i8*, i32, ...) @vcos_log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  br label %107

70:                                               ; preds = %51
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i64 @eglCreateContext(i64 %73, i32 %74, i64 %75, i32* %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %70
  %86 = load i32, i32* @VCOS_FUNCTION, align 4
  %87 = call i32 (i8*, i32, ...) @vcos_log_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  br label %107

88:                                               ; preds = %70
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @eglMakeCurrent(i64 %91, i32 %94, i32 %97, i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %88
  %104 = load i32, i32* @VCOS_FUNCTION, align 4
  %105 = call i32 (i8*, i32, ...) @vcos_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  br label %107

106:                                              ; preds = %88
  store i32 0, i32* %4, align 4
  br label %117

107:                                              ; preds = %103, %85, %67, %48, %38, %29, %16
  %108 = load i32, i32* @VCOS_FUNCTION, align 4
  %109 = call i32 (...) @eglGetError()
  %110 = call i32 (i8*, i32, ...) @vcos_log_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %113, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = call i32 %114(%struct.TYPE_6__* %115)
  store i32 -1, i32* %4, align 4
  br label %117

117:                                              ; preds = %107, %106
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @vcos_log_trace(i8*, i32) #1

declare dso_local i32 @vcos_log_error(i8*, i32, ...) #1

declare dso_local i64 @eglGetDisplay(i32) #1

declare dso_local i32 @eglInitialize(i64, i32, i32) #1

declare dso_local i32 @eglChooseConfig(i64, i32*, i32*, i32, i32*) #1

declare dso_local i32 @eglCreateWindowSurface(i64, i32, i32*, i32*) #1

declare dso_local i64 @eglCreateContext(i64, i32, i64, i32*) #1

declare dso_local i32 @eglMakeCurrent(i64, i32, i32, i64) #1

declare dso_local i32 @eglGetError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
