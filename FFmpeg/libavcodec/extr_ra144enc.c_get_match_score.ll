; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra144enc.c_get_match_score.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra144enc.c_get_match_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCKSIZE = common dso_local global i32 0, align 4
@LPC_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, float*, float*, float*, float*, float*)* @get_match_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_match_score(float* %0, float* %1, float* %2, float* %3, float* %4, float* %5, float* %6, float* %7) #0 {
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store float* %1, float** %10, align 8
  store float* %2, float** %11, align 8
  store float* %3, float** %12, align 8
  store float* %4, float** %13, align 8
  store float* %5, float** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  %20 = load float*, float** %9, align 8
  %21 = load float*, float** %10, align 8
  %22 = load float*, float** %11, align 8
  %23 = load i32, i32* @BLOCKSIZE, align 4
  %24 = load i32, i32* @LPC_ORDER, align 4
  %25 = call i32 @ff_celp_lp_synthesis_filterf(float* %20, float* %21, float* %22, i32 %23, i32 %24)
  %26 = load float*, float** %12, align 8
  %27 = icmp ne float* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %8
  %29 = load float*, float** %9, align 8
  %30 = load float*, float** %12, align 8
  %31 = call i32 @orthogonalize(float* %29, float* %30)
  br label %32

32:                                               ; preds = %28, %8
  %33 = load float*, float** %13, align 8
  %34 = icmp ne float* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load float*, float** %9, align 8
  %37 = load float*, float** %13, align 8
  %38 = call i32 @orthogonalize(float* %36, float* %37)
  br label %39

39:                                               ; preds = %35, %32
  store float 0.000000e+00, float* %18, align 4
  store float 0.000000e+00, float* %17, align 4
  store i32 0, i32* %19, align 4
  br label %40

40:                                               ; preds = %71, %39
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* @BLOCKSIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %40
  %45 = load float*, float** %9, align 8
  %46 = load i32, i32* %19, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  %49 = load float, float* %48, align 4
  %50 = load float*, float** %9, align 8
  %51 = load i32, i32* %19, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  %54 = load float, float* %53, align 4
  %55 = fmul float %49, %54
  %56 = load float, float* %18, align 4
  %57 = fadd float %56, %55
  store float %57, float* %18, align 4
  %58 = load float*, float** %14, align 8
  %59 = load i32, i32* %19, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  %62 = load float, float* %61, align 4
  %63 = load float*, float** %9, align 8
  %64 = load i32, i32* %19, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fmul float %62, %67
  %69 = load float, float* %17, align 4
  %70 = fadd float %69, %68
  store float %70, float* %17, align 4
  br label %71

71:                                               ; preds = %44
  %72 = load i32, i32* %19, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %19, align 4
  br label %40

74:                                               ; preds = %40
  %75 = load float, float* %17, align 4
  %76 = fcmp ole float %75, 0.000000e+00
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load float*, float** %15, align 8
  store float 0.000000e+00, float* %78, align 4
  br label %89

79:                                               ; preds = %74
  %80 = load float, float* %17, align 4
  %81 = load float, float* %18, align 4
  %82 = fdiv float %80, %81
  %83 = load float*, float** %16, align 8
  store float %82, float* %83, align 4
  %84 = load float*, float** %16, align 8
  %85 = load float, float* %84, align 4
  %86 = load float, float* %17, align 4
  %87 = fmul float %85, %86
  %88 = load float*, float** %15, align 8
  store float %87, float* %88, align 4
  br label %89

89:                                               ; preds = %79, %77
  ret void
}

declare dso_local i32 @ff_celp_lp_synthesis_filterf(float*, float*, float*, i32, i32) #1

declare dso_local i32 @orthogonalize(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
