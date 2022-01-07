; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_gamma.c_WG_CheckHardwareGamma.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_gamma.c_WG_CheckHardwareGamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, i8*)* }

@qfalse = common dso_local global i8* null, align 8
@glConfig = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@qwglSetDeviceGammaRamp3DFX = common dso_local global i64 0, align 8
@qtrue = common dso_local global i8* null, align 8
@s_oldHardwareGamma = common dso_local global i32** null, align 8
@GLDRV_STANDALONE = common dso_local global i64 0, align 8
@r_ignorehwgamma = common dso_local global %struct.TYPE_5__* null, align 8
@ri = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"WARNING: device has broken gamma support, generated gamma.dat\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"WARNING: suspicious gamma tables, using linear ramp for restoration\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WG_CheckHardwareGamma() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @qfalse, align 8
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 1), align 8
  %4 = load i64, i64* @qwglSetDeviceGammaRamp3DFX, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %0
  %7 = load i8*, i8** @qtrue, align 8
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 1), align 8
  %8 = call i32 (...) @GetDesktopWindow()
  %9 = call i32 @GetDC(i32 %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = load i32**, i32*** @s_oldHardwareGamma, align 8
  %12 = call i8* @qwglGetDeviceGammaRamp3DFX(i32 %10, i32** %11)
  store i8* %12, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 1), align 8
  %13 = call i32 (...) @GetDesktopWindow()
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @ReleaseDC(i32 %13, i32 %14)
  br label %130

16:                                               ; preds = %0
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 0), align 8
  %18 = load i64, i64* @GLDRV_STANDALONE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %130

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @r_ignorehwgamma, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %130, label %26

26:                                               ; preds = %21
  %27 = call i32 (...) @GetDesktopWindow()
  %28 = call i32 @GetDC(i32 %27)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = load i32**, i32*** @s_oldHardwareGamma, align 8
  %31 = call i8* @GetDeviceGammaRamp(i32 %29, i32** %30)
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 1), align 8
  %32 = call i32 (...) @GetDesktopWindow()
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @ReleaseDC(i32 %32, i32 %33)
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 1), align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %129

37:                                               ; preds = %26
  %38 = load i32**, i32*** @s_oldHardwareGamma, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 255
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @HIBYTE(i32 %42)
  %44 = load i32**, i32*** @s_oldHardwareGamma, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @HIBYTE(i32 %48)
  %50 = icmp sle i32 %43, %49
  br i1 %50, label %79, label %51

51:                                               ; preds = %37
  %52 = load i32**, i32*** @s_oldHardwareGamma, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 255
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @HIBYTE(i32 %56)
  %58 = load i32**, i32*** @s_oldHardwareGamma, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @HIBYTE(i32 %62)
  %64 = icmp sle i32 %57, %63
  br i1 %64, label %79, label %65

65:                                               ; preds = %51
  %66 = load i32**, i32*** @s_oldHardwareGamma, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 255
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @HIBYTE(i32 %70)
  %72 = load i32**, i32*** @s_oldHardwareGamma, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @HIBYTE(i32 %76)
  %78 = icmp sle i32 %71, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %65, %51, %37
  %80 = load i8*, i8** @qfalse, align 8
  store i8* %80, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 1), align 8
  %81 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %82 = load i32, i32* @PRINT_WARNING, align 4
  %83 = call i32 %81(i32 %82, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %65
  %85 = load i32**, i32*** @s_oldHardwareGamma, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 181
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @HIBYTE(i32 %89)
  %91 = icmp eq i32 %90, 255
  br i1 %91, label %92, label %128

92:                                               ; preds = %84
  %93 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %94 = load i32, i32* @PRINT_WARNING, align 4
  %95 = call i32 %93(i32 %94, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %124, %92
  %97 = load i32, i32* %2, align 4
  %98 = icmp slt i32 %97, 255
  br i1 %98, label %99, label %127

99:                                               ; preds = %96
  %100 = load i32, i32* %2, align 4
  %101 = shl i32 %100, 8
  %102 = load i32**, i32*** @s_oldHardwareGamma, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %2, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load i32, i32* %2, align 4
  %109 = shl i32 %108, 8
  %110 = load i32**, i32*** @s_oldHardwareGamma, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %2, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  %116 = load i32, i32* %2, align 4
  %117 = shl i32 %116, 8
  %118 = load i32**, i32*** @s_oldHardwareGamma, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  br label %124

124:                                              ; preds = %99
  %125 = load i32, i32* %2, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %2, align 4
  br label %96

127:                                              ; preds = %96
  br label %128

128:                                              ; preds = %127, %84
  br label %129

129:                                              ; preds = %128, %26
  br label %130

130:                                              ; preds = %6, %20, %129, %21
  ret void
}

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @GetDesktopWindow(...) #1

declare dso_local i8* @qwglGetDeviceGammaRamp3DFX(i32, i32**) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i8* @GetDeviceGammaRamp(i32, i32**) #1

declare dso_local i32 @HIBYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
