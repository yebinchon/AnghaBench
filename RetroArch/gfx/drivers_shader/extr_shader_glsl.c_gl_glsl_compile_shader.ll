; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_compile_shader.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_shader/extr_shader_glsl.c_gl_glsl_compile_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"#version\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"#version %u%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"[GLSL]: Using GLSL version %u%s.\0A\00", align 1
@glsl_core = common dso_local global i64 0, align 8
@glsl_major = common dso_local global i32 0, align 4
@glsl_minor = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"#version %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"[GLSL]: Using GLSL version %u.\0A\00", align 1
@GL_COMPILE_STATUS = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8*, i8*)* @gl_glsl_compile_shader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_glsl_compile_shader(%struct.TYPE_3__* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x i8*], align 16
  %11 = alloca [32 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i8* @strstr(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %12, align 8
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %19, align 16
  %20 = load i8*, i8** %12, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 8
  %25 = call i32 @strtoul(i8* %24, i8** %8, i32 10)
  store i32 %25, i32* %14, align 4
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %27 = load i32, i32* %14, align 4
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %26, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %27, i8* %28)
  %30 = load i32, i32* %14, align 4
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %30, i8* %31)
  br label %55

33:                                               ; preds = %4
  %34 = load i64, i64* @glsl_core, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33
  store i32 0, i32* %15, align 4
  %37 = load i32, i32* @glsl_major, align 4
  %38 = mul nsw i32 %37, 100
  %39 = load i32, i32* @glsl_minor, align 4
  %40 = mul nsw i32 %39, 10
  %41 = add nsw i32 %38, %40
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  switch i32 %42, label %46 [
    i32 300, label %43
    i32 310, label %44
    i32 320, label %45
  ]

43:                                               ; preds = %36
  store i32 130, i32* %15, align 4
  br label %48

44:                                               ; preds = %36
  store i32 140, i32* %15, align 4
  br label %48

45:                                               ; preds = %36
  store i32 150, i32* %15, align 4
  br label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %46, %45, %44, %43
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %50 = load i32, i32* %15, align 4
  %51 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %49, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %15, align 4
  %53 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %48, %33
  br label %55

55:                                               ; preds = %54, %22
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %57 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  store i8* %56, i8** %57, align 16
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 1
  store i8* %58, i8** %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 2
  store i8* %62, i8** %63, align 16
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 3
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %68 = call i32 @ARRAY_SIZE(i8** %67)
  %69 = getelementptr inbounds [4 x i8*], [4 x i8*]* %10, i64 0, i64 0
  %70 = call i32 @glShaderSource(i32 %66, i32 %68, i8** %69, i32* null)
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @glCompileShader(i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @GL_COMPILE_STATUS, align 4
  %75 = call i32 @glGetShaderiv(i32 %73, i32 %74, i64* %9)
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @gl_glsl_print_shader_log(i32 %76)
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @GL_TRUE, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  ret i32 %81
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, ...) #1

declare dso_local i32 @glShaderSource(i32, i32, i8**, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @glCompileShader(i32) #1

declare dso_local i32 @glGetShaderiv(i32, i32, i64*) #1

declare dso_local i32 @gl_glsl_print_shader_log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
