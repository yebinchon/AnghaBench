; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_context.c_parseVersionString.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_context.c_parseVersionString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (i32)* }

@.str = private unnamed_addr constant [14 x i8] c"OpenGL ES-CM \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"OpenGL ES-CL \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"OpenGL ES \00", align 1
@__const.parseVersionString.prefixes = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@GLFW_OPENGL_API = common dso_local global i32 0, align 4
@GL_VERSION = common dso_local global i32 0, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to retrieve context version string\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@GLFW_OPENGL_ES_API = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"No version found in context version string\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @parseVersionString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseVersionString(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [4 x i8*], align 16
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = bitcast [4 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([4 x i8*]* @__const.parseVersionString.prefixes to i8*), i64 32, i1 false)
  %16 = load i32, i32* @GLFW_OPENGL_API, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  %18 = call %struct.TYPE_3__* (...) @_glfwPlatformGetCurrentContext()
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %11, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64 (i32)*, i64 (i32)** %20, align 8
  %22 = load i32, i32* @GL_VERSION, align 4
  %23 = call i64 %21(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %29 = call i32 @_glfwInputError(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32, i32* @GL_FALSE, align 4
  store i32 %30, i32* %5, align 4
  br label %75

31:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %59, %31
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strlen(i8* %42)
  store i64 %43, i64* %14, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i8*], [4 x i8*]* %13, i64 0, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call i64 @strncmp(i8* %44, i8* %48, i64 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %38
  %53 = load i64, i64* %14, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %12, align 8
  %56 = load i32, i32* @GLFW_OPENGL_ES_API, align 4
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  br label %62

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %32

62:                                               ; preds = %52, %32
  %63 = load i8*, i8** %12, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @sscanf(i8* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %64, i32* %65, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %71 = call i32 @_glfwInputError(i32 %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32, i32* @GL_FALSE, align 4
  store i32 %72, i32* %5, align 4
  br label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @GL_TRUE, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %69, %27
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_3__* @_glfwPlatformGetCurrentContext(...) #2

declare dso_local i32 @_glfwInputError(i32, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
