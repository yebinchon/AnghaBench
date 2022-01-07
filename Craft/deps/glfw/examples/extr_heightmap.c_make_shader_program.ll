; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_heightmap.c_make_shader_program.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_heightmap.c_make_shader_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_VERTEX_SHADER = common dso_local global i32 0, align 4
@GL_FRAGMENT_SHADER = common dso_local global i32 0, align 4
@GL_LINK_STATUS = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ERROR, failed to link shader program\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ERROR: \0A%s\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"ERROR: Unable to load fragment shader\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"ERROR: Unable to load vertex shader\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @make_shader_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_shader_program(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8192 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @GL_VERTEX_SHADER, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @make_shader(i32 %11, i8* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %2
  %17 = load i32, i32* @GL_FRAGMENT_SHADER, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @make_shader(i32 %17, i8* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %16
  %23 = call i32 (...) @glCreateProgram()
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @glAttachShader(i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @glAttachShader(i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @glLinkProgram(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @GL_LINK_STATUS, align 4
  %37 = call i32 @glGetProgramiv(i32 %35, i32 %36, i64* %6)
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @GL_TRUE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %26
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds [8192 x i8], [8192 x i8]* %10, i64 0, i64 0
  %46 = call i32 @glGetProgramInfoLog(i32 %44, i32 8192, i32* %9, i8* %45)
  %47 = load i32, i32* @stderr, align 4
  %48 = getelementptr inbounds [8192 x i8], [8192 x i8]* %10, i64 0, i64 0
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @glDeleteProgram(i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @glDeleteShader(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @glDeleteShader(i32 %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %41, %26
  br label %57

57:                                               ; preds = %56, %22
  br label %63

58:                                               ; preds = %16
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @glDeleteShader(i32 %61)
  br label %63

63:                                               ; preds = %58, %57
  br label %67

64:                                               ; preds = %2
  %65 = load i32, i32* @stderr, align 4
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @make_shader(i32, i8*) #1

declare dso_local i32 @glCreateProgram(...) #1

declare dso_local i32 @glAttachShader(i32, i32) #1

declare dso_local i32 @glLinkProgram(i32) #1

declare dso_local i32 @glGetProgramiv(i32, i32, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @glGetProgramInfoLog(i32, i32, i32*, i8*) #1

declare dso_local i32 @glDeleteProgram(i32) #1

declare dso_local i32 @glDeleteShader(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
