; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_egl_context.c_getErrorString.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_egl_context.c_getErrorString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"EGL is not or could not be initialized\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"EGL cannot access a requested resource\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"EGL failed to allocate resources for the requested operation\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"An unrecognized attribute or attribute value was passed in the attribute list\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"An EGLContext argument does not name a valid EGL rendering context\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"An EGLConfig argument does not name a valid EGL frame buffer configuration\00", align 1
@.str.7 = private unnamed_addr constant [102 x i8] c"The current surface of the calling thread is a window, pixel buffer or pixmap that is no longer valid\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"An EGLDisplay argument does not name a valid EGL display connection\00", align 1
@.str.9 = private unnamed_addr constant [81 x i8] c"An EGLSurface argument does not name a valid surface configured for GL rendering\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Arguments are inconsistent\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"One or more argument values are invalid\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"A NativePixmapType argument does not refer to a valid native pixmap\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"A NativeWindowType argument does not refer to a valid native window\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"The application must destroy all contexts and reinitialise\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"UNKNOWN EGL ERROR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @getErrorString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getErrorString(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %20 [
    i32 128, label %5
    i32 129, label %6
    i32 142, label %7
    i32 141, label %8
    i32 140, label %9
    i32 138, label %10
    i32 139, label %11
    i32 137, label %12
    i32 136, label %13
    i32 131, label %14
    i32 135, label %15
    i32 132, label %16
    i32 134, label %17
    i32 133, label %18
    i32 130, label %19
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %21

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %21

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %21

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %21

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %21

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %21

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %21

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %21

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %21

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %21

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %21

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %21

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %21

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %21

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %21

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
