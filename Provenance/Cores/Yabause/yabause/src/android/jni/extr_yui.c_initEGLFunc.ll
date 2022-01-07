; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_yui.c_initEGLFunc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/android/jni/extr_yui.c_initEGLFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"libEGL.so\00", align 1
@RTLD_LAZY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"eglGetCurrentDisplay\00", align 1
@eglGetCurrentDisplay = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"eglGetCurrentSurface\00", align 1
@eglGetCurrentSurface = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"eglGetCurrentContext\00", align 1
@eglGetCurrentContext = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"eglQuerySurface\00", align 1
@eglQuerySurface = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"eglSwapInterval\00", align 1
@eglSwapInterval = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"eglMakeCurrent\00", align 1
@eglMakeCurrent = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"eglSwapBuffers\00", align 1
@eglSwapBuffers = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"eglQueryString\00", align 1
@eglQueryString = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"eglGetError\00", align 1
@eglGetError = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @initEGLFunc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @RTLD_LAZY, align 4
  %5 = call i8* @dlopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 (...) @dlerror()
  %10 = call i32 @yprintf(i32 %9)
  store i32 -1, i32* %1, align 4
  br label %93

11:                                               ; preds = %0
  %12 = load i8*, i8** %2, align 8
  %13 = call i8* @dlsym(i8* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** @eglGetCurrentDisplay, align 8
  %15 = load i32*, i32** @eglGetCurrentDisplay, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = call i32 (...) @dlerror()
  %19 = call i32 @yprintf(i32 %18)
  store i32 -1, i32* %1, align 4
  br label %93

20:                                               ; preds = %11
  %21 = load i8*, i8** %2, align 8
  %22 = call i8* @dlsym(i8* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** @eglGetCurrentSurface, align 8
  %24 = load i32*, i32** @eglGetCurrentSurface, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = call i32 (...) @dlerror()
  %28 = call i32 @yprintf(i32 %27)
  store i32 -1, i32* %1, align 4
  br label %93

29:                                               ; preds = %20
  %30 = load i8*, i8** %2, align 8
  %31 = call i8* @dlsym(i8* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** @eglGetCurrentContext, align 8
  %33 = load i32*, i32** @eglGetCurrentContext, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = call i32 (...) @dlerror()
  %37 = call i32 @yprintf(i32 %36)
  store i32 -1, i32* %1, align 4
  br label %93

38:                                               ; preds = %29
  %39 = load i8*, i8** %2, align 8
  %40 = call i8* @dlsym(i8* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** @eglQuerySurface, align 8
  %42 = load i32*, i32** @eglQuerySurface, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = call i32 (...) @dlerror()
  %46 = call i32 @yprintf(i32 %45)
  store i32 -1, i32* %1, align 4
  br label %93

47:                                               ; preds = %38
  %48 = load i8*, i8** %2, align 8
  %49 = call i8* @dlsym(i8* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** @eglSwapInterval, align 8
  %51 = load i32*, i32** @eglSwapInterval, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = call i32 (...) @dlerror()
  %55 = call i32 @yprintf(i32 %54)
  store i32 -1, i32* %1, align 4
  br label %93

56:                                               ; preds = %47
  %57 = load i8*, i8** %2, align 8
  %58 = call i8* @dlsym(i8* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** @eglMakeCurrent, align 8
  %60 = load i32*, i32** @eglMakeCurrent, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = call i32 (...) @dlerror()
  %64 = call i32 @yprintf(i32 %63)
  store i32 -1, i32* %1, align 4
  br label %93

65:                                               ; preds = %56
  %66 = load i8*, i8** %2, align 8
  %67 = call i8* @dlsym(i8* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %68 = bitcast i8* %67 to i32*
  store i32* %68, i32** @eglSwapBuffers, align 8
  %69 = load i32*, i32** @eglSwapBuffers, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = call i32 (...) @dlerror()
  %73 = call i32 @yprintf(i32 %72)
  store i32 -1, i32* %1, align 4
  br label %93

74:                                               ; preds = %65
  %75 = load i8*, i8** %2, align 8
  %76 = call i8* @dlsym(i8* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** @eglQueryString, align 8
  %78 = load i32*, i32** @eglQueryString, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = call i32 (...) @dlerror()
  %82 = call i32 @yprintf(i32 %81)
  store i32 -1, i32* %1, align 4
  br label %93

83:                                               ; preds = %74
  %84 = load i8*, i8** %2, align 8
  %85 = call i8* @dlsym(i8* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %86 = bitcast i8* %85 to i32*
  store i32* %86, i32** @eglGetError, align 8
  %87 = load i32*, i32** @eglGetError, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = call i32 (...) @dlerror()
  %91 = call i32 @yprintf(i32 %90)
  store i32 -1, i32* %1, align 4
  br label %93

92:                                               ; preds = %83
  store i32 0, i32* %1, align 4
  br label %93

93:                                               ; preds = %92, %89, %80, %71, %62, %53, %44, %35, %26, %17, %8
  %94 = load i32, i32* %1, align 4
  ret i32 %94
}

declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i32 @yprintf(i32) #1

declare dso_local i32 @dlerror(...) #1

declare dso_local i8* @dlsym(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
