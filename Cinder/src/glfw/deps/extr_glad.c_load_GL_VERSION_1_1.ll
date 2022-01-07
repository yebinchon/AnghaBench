; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/deps/extr_glad.c_load_GL_VERSION_1_1.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/deps/extr_glad.c_load_GL_VERSION_1_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_GL_VERSION_1_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glDrawArrays\00", align 1
@glad_glDrawArrays = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"glDrawElements\00", align 1
@glad_glDrawElements = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"glGetPointerv\00", align 1
@glad_glGetPointerv = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"glPolygonOffset\00", align 1
@glad_glPolygonOffset = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"glCopyTexImage1D\00", align 1
@glad_glCopyTexImage1D = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"glCopyTexImage2D\00", align 1
@glad_glCopyTexImage2D = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"glCopyTexSubImage1D\00", align 1
@glad_glCopyTexSubImage1D = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"glCopyTexSubImage2D\00", align 1
@glad_glCopyTexSubImage2D = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"glTexSubImage1D\00", align 1
@glad_glTexSubImage1D = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"glTexSubImage2D\00", align 1
@glad_glTexSubImage2D = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"glBindTexture\00", align 1
@glad_glBindTexture = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"glDeleteTextures\00", align 1
@glad_glDeleteTextures = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"glGenTextures\00", align 1
@glad_glGenTextures = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [12 x i8] c"glIsTexture\00", align 1
@glad_glIsTexture = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [15 x i8] c"glArrayElement\00", align 1
@glad_glArrayElement = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"glColorPointer\00", align 1
@glad_glColorPointer = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [21 x i8] c"glDisableClientState\00", align 1
@glad_glDisableClientState = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [18 x i8] c"glEdgeFlagPointer\00", align 1
@glad_glEdgeFlagPointer = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [20 x i8] c"glEnableClientState\00", align 1
@glad_glEnableClientState = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"glIndexPointer\00", align 1
@glad_glIndexPointer = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [20 x i8] c"glInterleavedArrays\00", align 1
@glad_glInterleavedArrays = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [16 x i8] c"glNormalPointer\00", align 1
@glad_glNormalPointer = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [18 x i8] c"glTexCoordPointer\00", align 1
@glad_glTexCoordPointer = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [16 x i8] c"glVertexPointer\00", align 1
@glad_glVertexPointer = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [22 x i8] c"glAreTexturesResident\00", align 1
@glad_glAreTexturesResident = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [21 x i8] c"glPrioritizeTextures\00", align 1
@glad_glPrioritizeTextures = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [10 x i8] c"glIndexub\00", align 1
@glad_glIndexub = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [11 x i8] c"glIndexubv\00", align 1
@glad_glIndexubv = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [18 x i8] c"glPopClientAttrib\00", align 1
@glad_glPopClientAttrib = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [19 x i8] c"glPushClientAttrib\00", align 1
@glad_glPushClientAttrib = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*)*)* @load_GL_VERSION_1_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_GL_VERSION_1_1(i64 (i8*)* %0) #0 {
  %2 = alloca i64 (i8*)*, align 8
  store i64 (i8*)* %0, i64 (i8*)** %2, align 8
  %3 = load i32, i32* @GLAD_GL_VERSION_1_1, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %67

6:                                                ; preds = %1
  %7 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %8 = call i64 %7(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i64 %8, i64* @glad_glDrawArrays, align 8
  %9 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %10 = call i64 %9(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i64 %10, i64* @glad_glDrawElements, align 8
  %11 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %12 = call i64 %11(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i64 %12, i64* @glad_glGetPointerv, align 8
  %13 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %14 = call i64 %13(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i64 %14, i64* @glad_glPolygonOffset, align 8
  %15 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %16 = call i64 %15(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i64 %16, i64* @glad_glCopyTexImage1D, align 8
  %17 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %18 = call i64 %17(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i64 %18, i64* @glad_glCopyTexImage2D, align 8
  %19 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %20 = call i64 %19(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i64 %20, i64* @glad_glCopyTexSubImage1D, align 8
  %21 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %22 = call i64 %21(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i64 %22, i64* @glad_glCopyTexSubImage2D, align 8
  %23 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %24 = call i64 %23(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  store i64 %24, i64* @glad_glTexSubImage1D, align 8
  %25 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %26 = call i64 %25(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  store i64 %26, i64* @glad_glTexSubImage2D, align 8
  %27 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %28 = call i64 %27(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  store i64 %28, i64* @glad_glBindTexture, align 8
  %29 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %30 = call i64 %29(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  store i64 %30, i64* @glad_glDeleteTextures, align 8
  %31 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %32 = call i64 %31(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  store i64 %32, i64* @glad_glGenTextures, align 8
  %33 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %34 = call i64 %33(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  store i64 %34, i64* @glad_glIsTexture, align 8
  %35 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %36 = call i64 %35(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  store i64 %36, i64* @glad_glArrayElement, align 8
  %37 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %38 = call i64 %37(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  store i64 %38, i64* @glad_glColorPointer, align 8
  %39 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %40 = call i64 %39(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  store i64 %40, i64* @glad_glDisableClientState, align 8
  %41 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %42 = call i64 %41(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  store i64 %42, i64* @glad_glEdgeFlagPointer, align 8
  %43 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %44 = call i64 %43(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  store i64 %44, i64* @glad_glEnableClientState, align 8
  %45 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %46 = call i64 %45(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  store i64 %46, i64* @glad_glIndexPointer, align 8
  %47 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %48 = call i64 %47(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  store i64 %48, i64* @glad_glInterleavedArrays, align 8
  %49 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %50 = call i64 %49(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  store i64 %50, i64* @glad_glNormalPointer, align 8
  %51 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %52 = call i64 %51(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  store i64 %52, i64* @glad_glTexCoordPointer, align 8
  %53 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %54 = call i64 %53(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  store i64 %54, i64* @glad_glVertexPointer, align 8
  %55 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %56 = call i64 %55(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0))
  store i64 %56, i64* @glad_glAreTexturesResident, align 8
  %57 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %58 = call i64 %57(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0))
  store i64 %58, i64* @glad_glPrioritizeTextures, align 8
  %59 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %60 = call i64 %59(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  store i64 %60, i64* @glad_glIndexub, align 8
  %61 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %62 = call i64 %61(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  store i64 %62, i64* @glad_glIndexubv, align 8
  %63 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %64 = call i64 %63(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0))
  store i64 %64, i64* @glad_glPopClientAttrib, align 8
  %65 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %66 = call i64 %65(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0))
  store i64 %66, i64* @glad_glPushClientAttrib, align 8
  br label %67

67:                                               ; preds = %6, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
