; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c__hit_test.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c__hit_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hit_test(i32* %0, float %1, i32 %2, float %3, float %4, float %5, float %6, float %7, float %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store float %1, float* %15, align 4
  store i32 %2, i32* %16, align 4
  store float %3, float* %17, align 4
  store float %4, float* %18, align 4
  store float %5, float* %19, align 4
  store float %6, float* %20, align 4
  store float %7, float* %21, align 4
  store float %8, float* %22, align 4
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  store i32 32, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  br label %35

35:                                               ; preds = %111, %12
  %36 = load i32, i32* %30, align 4
  %37 = sitofp i32 %36 to float
  %38 = load float, float* %15, align 4
  %39 = load i32, i32* %26, align 4
  %40 = sitofp i32 %39 to float
  %41 = fmul float %38, %40
  %42 = fcmp olt float %37, %41
  br i1 %42, label %43, label %114

43:                                               ; preds = %35
  %44 = load float, float* %17, align 4
  %45 = call i32 @roundf(float %44)
  store i32 %45, i32* %31, align 4
  %46 = load float, float* %18, align 4
  %47 = call i32 @roundf(float %46)
  store i32 %47, i32* %32, align 4
  %48 = load float, float* %19, align 4
  %49 = call i32 @roundf(float %48)
  store i32 %49, i32* %33, align 4
  %50 = load i32, i32* %31, align 4
  %51 = load i32, i32* %27, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %32, align 4
  %55 = load i32, i32* %28, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %33, align 4
  %59 = load i32, i32* %29, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %57, %53, %43
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %31, align 4
  %64 = load i32, i32* %32, align 4
  %65 = load i32, i32* %33, align 4
  %66 = call i32 @map_get(i32* %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %34, align 4
  %67 = load i32, i32* %34, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %88

69:                                               ; preds = %61
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* %27, align 4
  %74 = load i32*, i32** %23, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %28, align 4
  %76 = load i32*, i32** %24, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %29, align 4
  %78 = load i32*, i32** %25, align 8
  store i32 %77, i32* %78, align 4
  br label %86

79:                                               ; preds = %69
  %80 = load i32, i32* %31, align 4
  %81 = load i32*, i32** %23, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %32, align 4
  %83 = load i32*, i32** %24, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %33, align 4
  %85 = load i32*, i32** %25, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %79, %72
  %87 = load i32, i32* %34, align 4
  store i32 %87, i32* %13, align 4
  br label %115

88:                                               ; preds = %61
  %89 = load i32, i32* %31, align 4
  store i32 %89, i32* %27, align 4
  %90 = load i32, i32* %32, align 4
  store i32 %90, i32* %28, align 4
  %91 = load i32, i32* %33, align 4
  store i32 %91, i32* %29, align 4
  br label %92

92:                                               ; preds = %88, %57
  %93 = load float, float* %20, align 4
  %94 = load i32, i32* %26, align 4
  %95 = sitofp i32 %94 to float
  %96 = fdiv float %93, %95
  %97 = load float, float* %17, align 4
  %98 = fadd float %97, %96
  store float %98, float* %17, align 4
  %99 = load float, float* %21, align 4
  %100 = load i32, i32* %26, align 4
  %101 = sitofp i32 %100 to float
  %102 = fdiv float %99, %101
  %103 = load float, float* %18, align 4
  %104 = fadd float %103, %102
  store float %104, float* %18, align 4
  %105 = load float, float* %22, align 4
  %106 = load i32, i32* %26, align 4
  %107 = sitofp i32 %106 to float
  %108 = fdiv float %105, %107
  %109 = load float, float* %19, align 4
  %110 = fadd float %109, %108
  store float %110, float* %19, align 4
  br label %111

111:                                              ; preds = %92
  %112 = load i32, i32* %30, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %30, align 4
  br label %35

114:                                              ; preds = %35
  store i32 0, i32* %13, align 4
  br label %115

115:                                              ; preds = %114, %86
  %116 = load i32, i32* %13, align 4
  ret i32 %116
}

declare dso_local i32 @roundf(float) #1

declare dso_local i32 @map_get(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
