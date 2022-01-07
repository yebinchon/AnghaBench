; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_psp_joypad.c_psp_joypad_axis.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_psp_joypad.c_psp_joypad_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AXIS_NONE = common dso_local global i64 0, align 8
@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@analog_state = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @psp_joypad_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_joypad_axis(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @AXIS_NONE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %92

18:                                               ; preds = %13
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @AXIS_NEG_GET(i64 %19)
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @AXIS_NEG_GET(i64 %23)
  store i32 %24, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %33

25:                                               ; preds = %18
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @AXIS_POS_GET(i64 %26)
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @AXIS_POS_GET(i64 %30)
  store i32 %31, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %25
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %75 [
    i32 0, label %35
    i32 1, label %45
    i32 2, label %55
    i32 3, label %65
  ]

35:                                               ; preds = %33
  %36 = load i32***, i32**** @analog_state, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32**, i32*** %36, i64 %38
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  br label %75

45:                                               ; preds = %33
  %46 = load i32***, i32**** @analog_state, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32**, i32*** %46, i64 %48
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  br label %75

55:                                               ; preds = %33
  %56 = load i32***, i32**** @analog_state, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32**, i32*** %56, i64 %58
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %6, align 4
  br label %75

65:                                               ; preds = %33
  %66 = load i32***, i32**** @analog_state, align 8
  %67 = load i32, i32* %4, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32**, i32*** %66, i64 %68
  %70 = load i32**, i32*** %69, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %33, %65, %55, %45, %35
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %90

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %85, %82
  br label %90

90:                                               ; preds = %89, %81
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %17
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @AXIS_NEG_GET(i64) #1

declare dso_local i32 @AXIS_POS_GET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
