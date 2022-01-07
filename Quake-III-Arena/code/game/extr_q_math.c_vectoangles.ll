; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_vectoangles.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_q_math.c_vectoangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global i32 0, align 4
@PITCH = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vectoangles(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %12
  store float 0.000000e+00, float* %6, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store float 9.000000e+01, float* %7, align 4
  br label %24

23:                                               ; preds = %17
  store float 2.700000e+02, float* %7, align 4
  br label %24

24:                                               ; preds = %23, %22
  br label %89

25:                                               ; preds = %12, %2
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = sitofp i32 %36 to float
  %38 = call i32 @atan2(i32 %33, float %37)
  %39 = mul nsw i32 %38, 180
  %40 = load i32, i32* @M_PI, align 4
  %41 = sdiv i32 %39, %40
  %42 = sitofp i32 %41 to float
  store float %42, float* %6, align 4
  br label %51

43:                                               ; preds = %25
  %44 = load i32*, i32** %3, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store float 9.000000e+01, float* %6, align 4
  br label %50

49:                                               ; preds = %43
  store float 2.700000e+02, float* %6, align 4
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50, %30
  %52 = load float, float* %6, align 4
  %53 = fcmp olt float %52, 0.000000e+00
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load float, float* %6, align 4
  %56 = fadd float %55, 3.600000e+02
  store float %56, float* %6, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = load i32*, i32** %3, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = add nsw i32 %64, %71
  %73 = call float @sqrt(i32 %72)
  store float %73, float* %5, align 4
  %74 = load i32*, i32** %3, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = load float, float* %5, align 4
  %78 = call i32 @atan2(i32 %76, float %77)
  %79 = mul nsw i32 %78, 180
  %80 = load i32, i32* @M_PI, align 4
  %81 = sdiv i32 %79, %80
  %82 = sitofp i32 %81 to float
  store float %82, float* %7, align 4
  %83 = load float, float* %7, align 4
  %84 = fcmp olt float %83, 0.000000e+00
  br i1 %84, label %85, label %88

85:                                               ; preds = %57
  %86 = load float, float* %7, align 4
  %87 = fadd float %86, 3.600000e+02
  store float %87, float* %7, align 4
  br label %88

88:                                               ; preds = %85, %57
  br label %89

89:                                               ; preds = %88, %24
  %90 = load float, float* %7, align 4
  %91 = fneg float %90
  %92 = fptosi float %91 to i32
  %93 = load i32*, i32** %4, align 8
  %94 = load i64, i64* @PITCH, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %92, i32* %95, align 4
  %96 = load float, float* %6, align 4
  %97 = fptosi float %96 to i32
  %98 = load i32*, i32** %4, align 8
  %99 = load i64, i64* @YAW, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %97, i32* %100, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = load i64, i64* @ROLL, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 0, i32* %103, align 4
  ret void
}

declare dso_local i32 @atan2(i32, float) #1

declare dso_local float @sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
