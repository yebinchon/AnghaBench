; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/deps/extr_glad.c_load_GL_VERSION_1_5.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/deps/extr_glad.c_load_GL_VERSION_1_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_GL_VERSION_1_5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glGenQueries\00", align 1
@glad_glGenQueries = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"glDeleteQueries\00", align 1
@glad_glDeleteQueries = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"glIsQuery\00", align 1
@glad_glIsQuery = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"glBeginQuery\00", align 1
@glad_glBeginQuery = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"glEndQuery\00", align 1
@glad_glEndQuery = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"glGetQueryiv\00", align 1
@glad_glGetQueryiv = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"glGetQueryObjectiv\00", align 1
@glad_glGetQueryObjectiv = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"glGetQueryObjectuiv\00", align 1
@glad_glGetQueryObjectuiv = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"glBindBuffer\00", align 1
@glad_glBindBuffer = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"glDeleteBuffers\00", align 1
@glad_glDeleteBuffers = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"glGenBuffers\00", align 1
@glad_glGenBuffers = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"glIsBuffer\00", align 1
@glad_glIsBuffer = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"glBufferData\00", align 1
@glad_glBufferData = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"glBufferSubData\00", align 1
@glad_glBufferSubData = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [19 x i8] c"glGetBufferSubData\00", align 1
@glad_glGetBufferSubData = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"glMapBuffer\00", align 1
@glad_glMapBuffer = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [14 x i8] c"glUnmapBuffer\00", align 1
@glad_glUnmapBuffer = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [23 x i8] c"glGetBufferParameteriv\00", align 1
@glad_glGetBufferParameteriv = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [20 x i8] c"glGetBufferPointerv\00", align 1
@glad_glGetBufferPointerv = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*)*)* @load_GL_VERSION_1_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_GL_VERSION_1_5(i64 (i8*)* %0) #0 {
  %2 = alloca i64 (i8*)*, align 8
  store i64 (i8*)* %0, i64 (i8*)** %2, align 8
  %3 = load i32, i32* @GLAD_GL_VERSION_1_5, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %45

6:                                                ; preds = %1
  %7 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %8 = call i64 %7(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i64 %8, i64* @glad_glGenQueries, align 8
  %9 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %10 = call i64 %9(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i64 %10, i64* @glad_glDeleteQueries, align 8
  %11 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %12 = call i64 %11(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i64 %12, i64* @glad_glIsQuery, align 8
  %13 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %14 = call i64 %13(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i64 %14, i64* @glad_glBeginQuery, align 8
  %15 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %16 = call i64 %15(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i64 %16, i64* @glad_glEndQuery, align 8
  %17 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %18 = call i64 %17(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i64 %18, i64* @glad_glGetQueryiv, align 8
  %19 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %20 = call i64 %19(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i64 %20, i64* @glad_glGetQueryObjectiv, align 8
  %21 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %22 = call i64 %21(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i64 %22, i64* @glad_glGetQueryObjectuiv, align 8
  %23 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %24 = call i64 %23(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i64 %24, i64* @glad_glBindBuffer, align 8
  %25 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %26 = call i64 %25(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  store i64 %26, i64* @glad_glDeleteBuffers, align 8
  %27 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %28 = call i64 %27(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  store i64 %28, i64* @glad_glGenBuffers, align 8
  %29 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %30 = call i64 %29(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  store i64 %30, i64* @glad_glIsBuffer, align 8
  %31 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %32 = call i64 %31(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  store i64 %32, i64* @glad_glBufferData, align 8
  %33 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %34 = call i64 %33(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  store i64 %34, i64* @glad_glBufferSubData, align 8
  %35 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %36 = call i64 %35(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  store i64 %36, i64* @glad_glGetBufferSubData, align 8
  %37 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %38 = call i64 %37(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  store i64 %38, i64* @glad_glMapBuffer, align 8
  %39 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %40 = call i64 %39(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  store i64 %40, i64* @glad_glUnmapBuffer, align 8
  %41 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %42 = call i64 %41(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  store i64 %42, i64* @glad_glGetBufferParameteriv, align 8
  %43 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %44 = call i64 %43(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  store i64 %44, i64* @glad_glGetBufferPointerv, align 8
  br label %45

45:                                               ; preds = %6, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
