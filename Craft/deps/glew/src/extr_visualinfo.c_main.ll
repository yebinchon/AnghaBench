; ModuleID = '/home/carl/AnghaBench/Craft/deps/glew/src/extr_visualinfo.c_main.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glew/src/extr_visualinfo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GL_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"Usage: visualinfo [-h] [-display <display>] [-visual <id>]\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"        -h: this screen\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"        -display <display>: use given display\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"        -visual <id>: use given visual\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Error: CreateContext failed\0A\00", align 1
@glewExperimental = common dso_local global i64 0, align 8
@GLEW_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Error [main]: glewInit failed: %s\0A\00", align 1
@stdout = common dso_local global i32* null, align 8
@file = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"OpenGL vendor string: %s\0A\00", align 1
@GL_VENDOR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"OpenGL renderer string: %s\0A\00", align 1
@GL_RENDERER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"OpenGL version string: %s\0A\00", align 1
@GL_VERSION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"OpenGL extensions (GL_): \0A\00", align 1
@GL_EXTENSIONS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"GLU version string: %s\0A\00", align 1
@GLU_VERSION = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"GLU extensions (GLU_): \0A\00", align 1
@GLU_EXTENSIONS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"GLX extensions (GLX_): \0A\00", align 1
@WGLEW_ARB_extensions_string = common dso_local global i64 0, align 8
@WGLEW_EXT_extensions_string = common dso_local global i64 0, align 8
@displaystdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i64, i64* @GL_TRUE, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = call i64 @ParseArgs(i32 %10, i8** %12)
  %14 = icmp eq i64 %8, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i32*, i32** @stderr, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** @stderr, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** @stderr, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32*, i32** @stderr, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %89

24:                                               ; preds = %2
  %25 = call i32 @InitContext(%struct.TYPE_6__* %7)
  %26 = load i64, i64* @GL_TRUE, align 8
  %27 = call i64 @CreateContext(%struct.TYPE_6__* %7)
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32*, i32** @stderr, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @DestroyContext(%struct.TYPE_6__* %7)
  store i32 1, i32* %3, align 4
  br label %89

33:                                               ; preds = %24
  %34 = load i64, i64* @GL_TRUE, align 8
  store i64 %34, i64* @glewExperimental, align 8
  %35 = call i32 (...) @glewInit()
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @GLEW_OK, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32*, i32** @stderr, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i8* @glewGetErrorString(i32 %41)
  %43 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %42)
  %44 = call i32 @DestroyContext(%struct.TYPE_6__* %7)
  store i32 1, i32* %3, align 4
  br label %89

45:                                               ; preds = %33
  %46 = load i32*, i32** @stdout, align 8
  store i32* %46, i32** @file, align 8
  %47 = load i32*, i32** @file, align 8
  %48 = load i32, i32* @GL_VENDOR, align 4
  %49 = call i8* @glGetString(i32 %48)
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %49)
  %51 = load i32*, i32** @file, align 8
  %52 = load i32, i32* @GL_RENDERER, align 4
  %53 = call i8* @glGetString(i32 %52)
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %53)
  %55 = load i32*, i32** @file, align 8
  %56 = load i32, i32* @GL_VERSION, align 4
  %57 = call i8* @glGetString(i32 %56)
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %57)
  %59 = load i32*, i32** @file, align 8
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %61 = load i32, i32* @GL_EXTENSIONS, align 4
  %62 = call i8* @glGetString(i32 %61)
  %63 = call i32 @PrintExtensions(i8* %62)
  %64 = load i32*, i32** @file, align 8
  %65 = load i32, i32* @GLU_VERSION, align 4
  %66 = call i8* @gluGetString(i32 %65)
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %66)
  %68 = load i32*, i32** @file, align 8
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %70 = load i32, i32* @GLU_EXTENSIONS, align 4
  %71 = call i8* @gluGetString(i32 %70)
  %72 = call i32 @PrintExtensions(i8* %71)
  %73 = load i32*, i32** @file, align 8
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0))
  %75 = call i32 (...) @glXGetCurrentDisplay()
  %76 = call i32 (...) @glXGetCurrentDisplay()
  %77 = call i32 @DefaultScreen(i32 %76)
  %78 = call i8* @glXQueryExtensionsString(i32 %75, i32 %77)
  %79 = call i32 @PrintExtensions(i8* %78)
  %80 = call i32 @VisualInfo(%struct.TYPE_6__* %7)
  %81 = call i32 @DestroyContext(%struct.TYPE_6__* %7)
  %82 = load i32*, i32** @file, align 8
  %83 = load i32*, i32** @stdout, align 8
  %84 = icmp ne i32* %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %45
  %86 = load i32*, i32** @file, align 8
  %87 = call i32 @fclose(i32* %86)
  br label %88

88:                                               ; preds = %85, %45
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %39, %29, %15
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @ParseArgs(i32, i8**) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @InitContext(%struct.TYPE_6__*) #1

declare dso_local i64 @CreateContext(%struct.TYPE_6__*) #1

declare dso_local i32 @DestroyContext(%struct.TYPE_6__*) #1

declare dso_local i32 @glewInit(...) #1

declare dso_local i8* @glewGetErrorString(i32) #1

declare dso_local i8* @glGetString(i32) #1

declare dso_local i32 @PrintExtensions(i8*) #1

declare dso_local i8* @gluGetString(i32) #1

declare dso_local i8* @glXQueryExtensionsString(i32, i32) #1

declare dso_local i32 @glXGetCurrentDisplay(...) #1

declare dso_local i32 @DefaultScreen(i32) #1

declare dso_local i32 @VisualInfo(%struct.TYPE_6__*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
