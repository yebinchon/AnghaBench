; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_window.c_findValidPixelFormat.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_window.c_findValidPixelFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@mir_pixel_formats = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@mir_pixel_format_abgr_8888 = common dso_local global i64 0, align 8
@mir_pixel_format_xbgr_8888 = common dso_local global i64 0, align 8
@mir_pixel_format_argb_8888 = common dso_local global i64 0, align 8
@mir_pixel_format_xrgb_8888 = common dso_local global i64 0, align 8
@mir_pixel_format_invalid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @findValidPixelFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @findValidPixelFormat() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 32, i32* %4, align 4
  %8 = load i32, i32* @mir_pixel_formats, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i64, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @mir_connection_get_available_surface_formats(i32 %12, i64* %11, i32 %13, i32* %3)
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %53, %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %15
  %20 = load i32, i32* %2, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %11, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @mir_pixel_format_abgr_8888, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %47, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %2, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %11, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @mir_pixel_format_xbgr_8888, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %47, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %2, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %11, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @mir_pixel_format_argb_8888, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %2, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %11, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @mir_pixel_format_xrgb_8888, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40, %33, %26, %19
  %48 = load i32, i32* %2, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %11, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %1, align 8
  store i32 1, i32* %7, align 4
  br label %58

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %2, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %15

56:                                               ; preds = %15
  %57 = load i64, i64* @mir_pixel_format_invalid, align 8
  store i64 %57, i64* %1, align 8
  store i32 1, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %47
  %59 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %59)
  %60 = load i64, i64* %1, align 8
  ret i64 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mir_connection_get_available_surface_formats(i32, i64*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
