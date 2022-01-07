; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Fade.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Fade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@WINDOW_FADINGOUT = common dso_local global i32 0, align 4
@WINDOW_FADINGIN = common dso_local global i32 0, align 4
@DC = common dso_local global %struct.TYPE_2__* null, align 8
@WINDOW_VISIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Fade(i32* %0, float* %1, float %2, i32* %3, i32 %4, i64 %5, float %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca float, align 4
  store i32* %0, i32** %8, align 8
  store float* %1, float** %9, align 8
  store float %2, float* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store float %6, float* %14, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @WINDOW_FADINGOUT, align 4
  %18 = load i32, i32* @WINDOW_FADINGIN, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %86

22:                                               ; preds = %7
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @DC, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %22
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @DC, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32*, i32** %11, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @WINDOW_FADINGOUT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %29
  %42 = load float, float* %14, align 4
  %43 = load float*, float** %9, align 8
  %44 = load float, float* %43, align 4
  %45 = fsub float %44, %42
  store float %45, float* %43, align 4
  %46 = load i64, i64* %13, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = load float*, float** %9, align 8
  %50 = load float, float* %49, align 4
  %51 = fpext float %50 to double
  %52 = fcmp ole double %51, 0.000000e+00
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* @WINDOW_FADINGOUT, align 4
  %55 = load i32, i32* @WINDOW_VISIBLE, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %53, %48, %41
  br label %84

62:                                               ; preds = %29
  %63 = load float, float* %14, align 4
  %64 = load float*, float** %9, align 8
  %65 = load float, float* %64, align 4
  %66 = fadd float %65, %63
  store float %66, float* %64, align 4
  %67 = load float*, float** %9, align 8
  %68 = load float, float* %67, align 4
  %69 = load float, float* %10, align 4
  %70 = fcmp oge float %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %62
  %72 = load float, float* %10, align 4
  %73 = load float*, float** %9, align 8
  store float %72, float* %73, align 4
  %74 = load i64, i64* %13, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @WINDOW_FADINGIN, align 4
  %78 = xor i32 %77, -1
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %78
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %71
  br label %83

83:                                               ; preds = %82, %62
  br label %84

84:                                               ; preds = %83, %61
  br label %85

85:                                               ; preds = %84, %22
  br label %86

86:                                               ; preds = %85, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
