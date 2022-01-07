; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_seed_curve.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_seed_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P_LEVEL_0 = common dso_local global float 0.000000e+00, align 4
@P_LEVELS = common dso_local global i64 0, align 8
@EHMER_OFFSET = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float**, float, i32, i32, i32, float)* @seed_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seed_curve(float* %0, float** %1, float %2, i32 %3, i32 %4, i32 %5, float %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca float**, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  store float* %0, float** %8, align 8
  store float** %1, float*** %9, align 8
  store float %2, float* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store float %6, float* %14, align 4
  %22 = load float, float* %10, align 4
  %23 = load float, float* %14, align 4
  %24 = fadd float %22, %23
  %25 = load float, float* @P_LEVEL_0, align 4
  %26 = fsub float %24, %25
  %27 = fmul float %26, 0x3FB99999A0000000
  %28 = fptosi float %27 to i32
  store i32 %28, i32* %20, align 4
  %29 = load i32, i32* %20, align 4
  %30 = call i32 @max(i32 %29, i32 0)
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %20, align 4
  %32 = load i64, i64* @P_LEVELS, align 8
  %33 = sub nsw i64 %32, 1
  %34 = call i32 @min(i32 %31, i64 %33)
  store i32 %34, i32* %20, align 4
  %35 = load float**, float*** %9, align 8
  %36 = load i32, i32* %20, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float*, float** %35, i64 %37
  %39 = load float*, float** %38, align 8
  store float* %39, float** %18, align 8
  %40 = load float*, float** %18, align 8
  %41 = getelementptr inbounds float, float* %40, i64 2
  store float* %41, float** %19, align 8
  %42 = load float*, float** %18, align 8
  %43 = getelementptr inbounds float, float* %42, i64 1
  %44 = load float, float* %43, align 4
  %45 = fptosi float %44 to i32
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sitofp i32 %46 to float
  %48 = load float*, float** %18, align 8
  %49 = getelementptr inbounds float, float* %48, i64 0
  %50 = load float, float* %49, align 4
  %51 = load float, float* @EHMER_OFFSET, align 4
  %52 = fsub float %50, %51
  %53 = load i32, i32* %13, align 4
  %54 = sitofp i32 %53 to float
  %55 = fmul float %52, %54
  %56 = fadd float %47, %55
  %57 = load i32, i32* %13, align 4
  %58 = ashr i32 %57, 1
  %59 = sitofp i32 %58 to float
  %60 = fsub float %56, %59
  %61 = fptosi float %60 to i32
  store i32 %61, i32* %17, align 4
  %62 = load float*, float** %18, align 8
  %63 = getelementptr inbounds float, float* %62, i64 0
  %64 = load float, float* %63, align 4
  %65 = fptosi float %64 to i32
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %104, %7
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %66
  %71 = load i32, i32* %17, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %70
  %74 = load float, float* %10, align 4
  %75 = load float*, float** %19, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fadd float %74, %79
  store float %80, float* %21, align 4
  %81 = load float*, float** %8, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  %86 = load float, float* %21, align 4
  %87 = fcmp olt float %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %73
  %89 = load float, float* %21, align 4
  %90 = load float*, float** %8, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  store float %89, float* %93, align 4
  br label %94

94:                                               ; preds = %88, %73
  br label %95

95:                                               ; preds = %94, %70
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %107

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  br label %66

107:                                              ; preds = %102, %66
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
