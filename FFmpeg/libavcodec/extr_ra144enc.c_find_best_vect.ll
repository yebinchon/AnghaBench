; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra144enc.c_find_best_vect.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra144enc.c_find_best_vect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCKSIZE = common dso_local global i32 0, align 4
@FIXED_CB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, float*, float*, float*, i32*, float*)* @find_best_vect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_best_vect(float* %0, float* %1, float* %2, float* %3, float* %4, float* %5, i32* %6, float* %7) #0 {
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store float* %0, float** %9, align 8
  store float* %1, float** %10, align 8
  store float* %2, float** %11, align 8
  store float* %3, float** %12, align 8
  store float* %4, float** %13, align 8
  store float* %5, float** %14, align 8
  store i32* %6, i32** %15, align 8
  store float* %7, float** %16, align 8
  %24 = load i32, i32* @BLOCKSIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = load i32, i32* @BLOCKSIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %22, align 8
  %29 = alloca float, i64 %27, align 16
  store i64 %27, i64* %23, align 8
  store float 0.000000e+00, float* %21, align 4
  %30 = load float*, float** %16, align 8
  store float 0.000000e+00, float* %30, align 4
  %31 = load i32*, i32** %15, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %17, align 4
  br label %32

32:                                               ; preds = %74, %8
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @FIXED_CB_SIZE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %32
  store i32 0, i32* %18, align 4
  br label %37

37:                                               ; preds = %54, %36
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* @BLOCKSIZE, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load float*, float** %11, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %44, %25
  %46 = getelementptr inbounds float, float* %42, i64 %45
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float, float* %49, align 4
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %29, i64 %52
  store float %50, float* %53, align 4
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %18, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %18, align 4
  br label %37

57:                                               ; preds = %37
  %58 = load float*, float** %9, align 8
  %59 = load float*, float** %10, align 8
  %60 = load float*, float** %12, align 8
  %61 = load float*, float** %13, align 8
  %62 = load float*, float** %14, align 8
  %63 = call i32 @get_match_score(float* %58, float* %59, float* %29, float* %60, float* %61, float* %62, float* %20, float* %19)
  %64 = load float, float* %20, align 4
  %65 = load float, float* %21, align 4
  %66 = fcmp ogt float %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  %68 = load float, float* %20, align 4
  store float %68, float* %21, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32*, i32** %15, align 8
  store i32 %69, i32* %70, align 4
  %71 = load float, float* %19, align 4
  %72 = load float*, float** %16, align 8
  store float %71, float* %72, align 4
  br label %73

73:                                               ; preds = %67, %57
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %17, align 4
  br label %32

77:                                               ; preds = %32
  %78 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %78)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_match_score(float*, float*, float*, float*, float*, float*, float*, float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
