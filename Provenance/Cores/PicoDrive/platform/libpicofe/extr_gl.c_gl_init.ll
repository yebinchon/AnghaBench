; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_gl.c_gl_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_gl.c_gl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EGL_NONE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"gl_platform_init failed with %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"OOM\0A\00", align 1
@edpy = common dso_local global i64 0, align 8
@EGL_NO_DISPLAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to get EGL display\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to initialize EGL\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to choose config (%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"No EGL configs available\0A\00", align 1
@esfc = common dso_local global i64 0, align 8
@EGL_NO_SURFACE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"Unable to create EGL surface (%x)\0A\00", align 1
@EGL_NO_CONTEXT = common dso_local global i64 0, align 8
@ectxt = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"Unable to create EGL context (%x)\0A\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_RGB = common dso_local global i32 0, align 4
@GL_UNSIGNED_SHORT_5_6_5 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"glTexImage2D\00", align 1
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_CW = common dso_local global i32 0, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@GL_VERTEX_ARRAY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@gl_es_display = common dso_local global i8* null, align 8
@gl_es_surface = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl_init(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1 x i64], align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i32 -1, i32* %11, align 4
  %14 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 0
  %15 = load i64, i64* @EGL_NONE, align 8
  store i64 %15, i64* %14, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @gl_platform_init(i8** %4, i8** %5, i32* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %138

24:                                               ; preds = %3
  %25 = call i8* @calloc(i32 1, i32 1048576)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %138

31:                                               ; preds = %24
  %32 = load i8*, i8** %4, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = call i64 @eglGetDisplay(i32 %33)
  store i64 %34, i64* @edpy, align 8
  %35 = load i64, i64* @edpy, align 8
  %36 = load i64, i64* @EGL_NO_DISPLAY, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %138

41:                                               ; preds = %31
  %42 = load i64, i64* @edpy, align 8
  %43 = call i32 @eglInitialize(i64 %42, i32* null, i32* null)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %138

48:                                               ; preds = %41
  %49 = load i64, i64* @edpy, align 8
  %50 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 0
  %51 = call i32 @eglChooseConfig(i64 %49, i64* %50, i32** %7, i32 1, i64* %10)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (...) @eglGetError()
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  br label %138

57:                                               ; preds = %48
  %58 = load i32*, i32** %7, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %10, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %57
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %138

66:                                               ; preds = %60
  %67 = load i64, i64* @edpy, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = ptrtoint i8* %69 to i32
  %71 = call i64 @eglCreateWindowSurface(i64 %67, i32* %68, i32 %70, i32* null)
  store i64 %71, i64* @esfc, align 8
  %72 = load i64, i64* @esfc, align 8
  %73 = load i64, i64* @EGL_NO_SURFACE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (...) @eglGetError()
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  br label %138

79:                                               ; preds = %66
  %80 = load i64, i64* @edpy, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %83 = call i64 @eglCreateContext(i64 %80, i32* %81, i64 %82, i32* null)
  store i64 %83, i64* @ectxt, align 8
  %84 = load i64, i64* @ectxt, align 8
  %85 = load i64, i64* @EGL_NO_CONTEXT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 (...) @eglGetError()
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  br label %138

91:                                               ; preds = %79
  %92 = load i64, i64* @edpy, align 8
  %93 = load i64, i64* @esfc, align 8
  %94 = load i64, i64* @esfc, align 8
  %95 = load i64, i64* @ectxt, align 8
  %96 = call i32 @eglMakeCurrent(i64 %92, i64 %93, i64 %94, i64 %95)
  %97 = load i32, i32* @GL_TEXTURE_2D, align 4
  %98 = call i32 @glEnable(i32 %97)
  %99 = call i32 @glGenTextures(i32 1, i32* %8)
  %100 = load i32, i32* @GL_TEXTURE_2D, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @glBindTexture(i32 %100, i32 %101)
  %103 = load i32, i32* @GL_TEXTURE_2D, align 4
  %104 = load i32, i32* @GL_RGB, align 4
  %105 = load i32, i32* @GL_RGB, align 4
  %106 = load i32, i32* @GL_UNSIGNED_SHORT_5_6_5, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @glTexImage2D(i32 %103, i32 0, i32 %104, i32 1024, i32 512, i32 0, i32 %105, i32 %106, i8* %107)
  %109 = call i64 @gl_have_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %91
  br label %138

112:                                              ; preds = %91
  %113 = load i32, i32* @GL_TEXTURE_2D, align 4
  %114 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %115 = load i32, i32* @GL_LINEAR, align 4
  %116 = call i32 @glTexParameterf(i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* @GL_TEXTURE_2D, align 4
  %118 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %119 = load i32, i32* @GL_LINEAR, align 4
  %120 = call i32 @glTexParameterf(i32 %117, i32 %118, i32 %119)
  %121 = call i32 (...) @glLoadIdentity()
  %122 = load i32, i32* @GL_CW, align 4
  %123 = call i32 @glFrontFace(i32 %122)
  %124 = load i32, i32* @GL_CULL_FACE, align 4
  %125 = call i32 @glEnable(i32 %124)
  %126 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %127 = call i32 @glEnableClientState(i32 %126)
  %128 = load i32, i32* @GL_VERTEX_ARRAY, align 4
  %129 = call i32 @glEnableClientState(i32 %128)
  %130 = call i64 @gl_have_error(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %112
  br label %138

133:                                              ; preds = %112
  %134 = load i64, i64* @edpy, align 8
  %135 = inttoptr i64 %134 to i8*
  store i8* %135, i8** @gl_es_display, align 8
  %136 = load i64, i64* @esfc, align 8
  %137 = inttoptr i64 %136 to i8*
  store i8* %137, i8** @gl_es_surface, align 8
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %133, %132, %111, %87, %75, %63, %53, %45, %38, %28, %20
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @free(i8* %139)
  %141 = load i32, i32* %11, align 4
  ret i32 %141
}

declare dso_local i32 @gl_platform_init(i8**, i8**, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i64 @eglGetDisplay(i32) #1

declare dso_local i32 @eglInitialize(i64, i32*, i32*) #1

declare dso_local i32 @eglChooseConfig(i64, i64*, i32**, i32, i64*) #1

declare dso_local i32 @eglGetError(...) #1

declare dso_local i64 @eglCreateWindowSurface(i64, i32*, i32, i32*) #1

declare dso_local i64 @eglCreateContext(i64, i32*, i64, i32*) #1

declare dso_local i32 @eglMakeCurrent(i64, i64, i64, i64) #1

declare dso_local i32 @glEnable(i32) #1

declare dso_local i32 @glGenTextures(i32, i32*) #1

declare dso_local i32 @glBindTexture(i32, i32) #1

declare dso_local i32 @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @gl_have_error(i8*) #1

declare dso_local i32 @glTexParameterf(i32, i32, i32) #1

declare dso_local i32 @glLoadIdentity(...) #1

declare dso_local i32 @glFrontFace(i32) #1

declare dso_local i32 @glEnableClientState(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
