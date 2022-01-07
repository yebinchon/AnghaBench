; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-joystick.c_GetJSOr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-joystick.c_GetJSOr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GetJSOr.rtoggle = internal global i32 0, align 4
@soundo = common dso_local global i32 0, align 4
@joybuttons = common dso_local global i32 0, align 4
@joyBMap = common dso_local global i32* null, align 8
@joy = common dso_local global i32 0, align 4
@joyx = common dso_local global double 0.000000e+00, align 8
@joyxcenter = common dso_local global double 0.000000e+00, align 8
@JOY_LEFT = common dso_local global i32 0, align 4
@JOY_RIGHT = common dso_local global i32 0, align 4
@joyy = common dso_local global double 0.000000e+00, align 8
@joyycenter = common dso_local global double 0.000000e+00, align 8
@JOY_UP = common dso_local global i32 0, align 4
@JOY_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetJSOr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %3 = load i32, i32* @GetJSOr.rtoggle, align 4
  %4 = xor i32 %3, 1
  store i32 %4, i32* @GetJSOr.rtoggle, align 4
  %5 = load i32, i32* @soundo, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 (...) @UpdateJoyData()
  br label %9

9:                                                ; preds = %7, %0
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %44, %9
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 6
  br i1 %12, label %13, label %47

13:                                               ; preds = %10
  %14 = load i32, i32* %1, align 4
  %15 = icmp sge i32 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @GetJSOr.rtoggle, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* %1, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %43

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @joybuttons, align 4
  %24 = load i32*, i32** @joyBMap, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %23, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load i32, i32* %1, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %33, 3
  %35 = load i32, i32* @joy, align 4
  %36 = sub nsw i32 %35, 1
  %37 = shl i32 %36, 3
  %38 = shl i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %2, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %31, %22
  br label %43

43:                                               ; preds = %42, %19
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %10

47:                                               ; preds = %10
  %48 = load double, double* @joyx, align 8
  %49 = load double, double* @joyxcenter, align 8
  %50 = fmul double %49, 2.500000e-01
  %51 = fcmp ole double %48, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i32, i32* @JOY_LEFT, align 4
  %54 = load i32, i32* @joy, align 4
  %55 = sub nsw i32 %54, 1
  %56 = shl i32 %55, 3
  %57 = shl i32 %53, %56
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %2, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %2, align 8
  br label %76

61:                                               ; preds = %47
  %62 = load double, double* @joyx, align 8
  %63 = load double, double* @joyxcenter, align 8
  %64 = fmul double %63, 1.750000e+00
  %65 = fcmp oge double %62, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i32, i32* @JOY_RIGHT, align 4
  %68 = load i32, i32* @joy, align 4
  %69 = sub nsw i32 %68, 1
  %70 = shl i32 %69, 3
  %71 = shl i32 %67, %70
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %2, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %2, align 8
  br label %75

75:                                               ; preds = %66, %61
  br label %76

76:                                               ; preds = %75, %52
  %77 = load double, double* @joyy, align 8
  %78 = load double, double* @joyycenter, align 8
  %79 = fmul double %78, 2.500000e-01
  %80 = fcmp ole double %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i32, i32* @JOY_UP, align 4
  %83 = load i32, i32* @joy, align 4
  %84 = sub nsw i32 %83, 1
  %85 = shl i32 %84, 3
  %86 = shl i32 %82, %85
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %2, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %2, align 8
  br label %105

90:                                               ; preds = %76
  %91 = load double, double* @joyy, align 8
  %92 = load double, double* @joyycenter, align 8
  %93 = fmul double %92, 1.750000e+00
  %94 = fcmp oge double %91, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i32, i32* @JOY_DOWN, align 4
  %97 = load i32, i32* @joy, align 4
  %98 = sub nsw i32 %97, 1
  %99 = shl i32 %98, 3
  %100 = shl i32 %96, %99
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* %2, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %2, align 8
  br label %104

104:                                              ; preds = %95, %90
  br label %105

105:                                              ; preds = %104, %81
  %106 = load i64, i64* %2, align 8
  ret i64 %106
}

declare dso_local i32 @UpdateJoyData(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
