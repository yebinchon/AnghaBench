; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_egl_common.c_egl_report_error.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_egl_common.c_egl_report_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"EGL_SUCCESS\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"EGL_BAD_ACCESS\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"EGL_BAD_ALLOC\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"EGL_BAD_ATTRIBUTE\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"EGL_BAD_CONFIG\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"EGL_BAD_CONTEXT\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"EGL_BAD_CURRENT_SURFACE\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"EGL_BAD_DISPLAY\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"EGL_BAD_MATCH\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"EGL_BAD_NATIVE_PIXMAP\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"EGL_BAD_NATIVE_WINDOW\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"EGL_BAD_PARAMETER\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"EGL_BAD_SURFACE\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"[EGL]: #0x%x, %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @egl_report_error() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = call i32 (...) @eglGetError()
  store i32 %3, i32* %1, align 4
  store i8* null, i8** %2, align 8
  %4 = load i32, i32* %1, align 4
  switch i32 %4, label %18 [
    i32 128, label %5
    i32 140, label %6
    i32 139, label %7
    i32 138, label %8
    i32 137, label %9
    i32 136, label %10
    i32 135, label %11
    i32 134, label %12
    i32 133, label %13
    i32 132, label %14
    i32 131, label %15
    i32 130, label %16
    i32 129, label %17
  ]

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %19

6:                                                ; preds = %0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %19

7:                                                ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %19

8:                                                ; preds = %0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %19

9:                                                ; preds = %0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %19

10:                                               ; preds = %0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %19

11:                                               ; preds = %0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %19

12:                                               ; preds = %0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %19

13:                                               ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %19

14:                                               ; preds = %0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %19

15:                                               ; preds = %0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %19

16:                                               ; preds = %0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %19

17:                                               ; preds = %0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %19

18:                                               ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %19

19:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %20 = load i32, i32* %1, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %20, i8* %21)
  ret void
}

declare dso_local i32 @eglGetError(...) #1

declare dso_local i32 @RARCH_ERR(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
