; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_cgl_ctx.c_attach_gl_context_to_window.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_context/extr_cgl_ctx.c_attach_gl_context_to_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"cid:%d wid:%d\0A\00", align 1
@kCGWindowListOptionIncludingWindow = common dso_local global i32 0, align 4
@kCGWindowBounds = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@kCFNumberFloat64Type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@kCGErrorSuccess = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"ERR: no surface\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sid:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"ERR: cant set bounds\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"ERR: cant order front\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"ERR: cant set surface\0A\00", align 1
@kCGLCPHasDrawable = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"ERR: no drawable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @attach_gl_context_to_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_gl_context_to_window(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %17 = call i32 (...) @CGSMainConnectionID()
  store i32 %17, i32* %16, align 4
  %18 = load i32, i32* %16, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* @kCGWindowListOptionIncludingWindow, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @CGWindowListCopyWindowInfo(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @CFArrayGetValueAtIndex(i32 %24, i32 0)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* @kCGWindowBounds, align 4
  %28 = call i64 @CFDictionaryGetValue(i64 %26, i32 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @CFSTR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i64 @CFDictionaryGetValue(i64 %29, i32 %30)
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @kCFNumberFloat64Type, align 4
  %34 = call i32 @CFNumberGetValue(i32 %32, i32 %33, i64* %13)
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @CFSTR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i64 @CFDictionaryGetValue(i64 %35, i32 %36)
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @kCFNumberFloat64Type, align 4
  %40 = call i32 @CFNumberGetValue(i32 %38, i32 %39, i64* %14)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @CFRelease(i32 %41)
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @CGSAddSurface(i32 %43, i32 %44, i32* %15)
  %46 = load i64, i64* @kCGErrorSuccess, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @CGRectMake(i32 0, i32 0, i64 %56, i64 %57)
  %59 = call i64 @CGSSetSurfaceBounds(i32 %53, i32 %54, i32 %55, i32 %58)
  %60 = load i64, i64* @kCGErrorSuccess, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %50
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i64 @CGSOrderSurface(i32 %65, i32 %66, i32 %67, i32 1, i32 0)
  %69 = load i64, i64* @kCGErrorSuccess, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %64
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i64 @CGLSetSurface(i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load i64, i64* @kCGErrorSuccess, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %73
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @kCGLCPHasDrawable, align 4
  %86 = call i32 @CGLGetParameter(i32 %84, i32 %85, i32* %12)
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %83
  %92 = load i64, i64* %13, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i64, i64* %14, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i32*, i32** %8, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %15, align 4
  ret i32 %98
}

declare dso_local i32 @CGSMainConnectionID(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @CGWindowListCopyWindowInfo(i32, i32) #1

declare dso_local i64 @CFArrayGetValueAtIndex(i32, i32) #1

declare dso_local i64 @CFDictionaryGetValue(i64, i32) #1

declare dso_local i32 @CFNumberGetValue(i32, i32, i64*) #1

declare dso_local i32 @CFSTR(i8*) #1

declare dso_local i32 @CFRelease(i32) #1

declare dso_local i64 @CGSAddSurface(i32, i32, i32*) #1

declare dso_local i64 @CGSSetSurfaceBounds(i32, i32, i32, i32) #1

declare dso_local i32 @CGRectMake(i32, i32, i64, i64) #1

declare dso_local i64 @CGSOrderSurface(i32, i32, i32, i32, i32) #1

declare dso_local i64 @CGLSetSurface(i32, i32, i32, i32) #1

declare dso_local i32 @CGLGetParameter(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
