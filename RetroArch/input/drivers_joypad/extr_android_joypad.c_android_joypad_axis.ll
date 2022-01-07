; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_android_joypad.c_android_joypad_axis.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_android_joypad.c_android_joypad_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.android_app = type { i32** }

@g_android = common dso_local global i64 0, align 8
@AXIS_NONE = common dso_local global i64 0, align 8
@MAX_AXIS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @android_joypad_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @android_joypad_axis(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.android_app*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* @g_android, align 8
  %9 = inttoptr i64 %8 to %struct.android_app*
  store %struct.android_app* %9, %struct.android_app** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @AXIS_NONE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @AXIS_NEG_GET(i64 %15)
  %17 = load i64, i64* @MAX_AXIS, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.android_app*, %struct.android_app** %7, align 8
  %21 = getelementptr inbounds %struct.android_app, %struct.android_app* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @AXIS_NEG_GET(i64 %27)
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %33, %19
  br label %57

35:                                               ; preds = %14
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @AXIS_POS_GET(i64 %36)
  %38 = load i64, i64* @MAX_AXIS, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.android_app*, %struct.android_app** %7, align 8
  %42 = getelementptr inbounds %struct.android_app, %struct.android_app* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @AXIS_POS_GET(i64 %48)
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %35
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @AXIS_NEG_GET(i64) #1

declare dso_local i64 @AXIS_POS_GET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
