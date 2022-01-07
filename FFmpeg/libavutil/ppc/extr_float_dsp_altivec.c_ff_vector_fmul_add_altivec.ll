; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/ppc/extr_float_dsp_altivec.c_ff_vector_fmul_add_altivec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/ppc/extr_float_dsp_altivec.c_ff_vector_fmul_add_altivec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s0 = common dso_local global i32 0, align 4
@s1 = common dso_local global i32 0, align 4
@s2 = common dso_local global i32 0, align 4
@s3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vector_fmul_add_altivec(float* %0, float* %1, float* %2, float* %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %86, %5
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sub nsw i32 %21, 3
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %89

24:                                               ; preds = %19
  %25 = load float*, float** %6, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = call i32 @vec_ld(i32 0, float* %28)
  store i32 %29, i32* %16, align 4
  %30 = load float*, float** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  %34 = call i32 @vec_ld(i32 15, float* %33)
  store i32 %34, i32* %17, align 4
  %35 = load float*, float** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  %39 = call i32 @vec_ld(i32 0, float* %38)
  store i32 %39, i32* %13, align 4
  %40 = load float*, float** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  %44 = call i32 @vec_ld(i32 0, float* %43)
  store i32 %44, i32* %14, align 4
  %45 = load float*, float** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  %49 = call i32 @vec_ld(i32 0, float* %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @vcprm(i32 0, i32 1, i32 2, i32 3)
  %53 = call i32 @vec_perm(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @vec_madd(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @s0, align 4
  %61 = load i32, i32* @s1, align 4
  %62 = load i32, i32* @s2, align 4
  %63 = load i32, i32* @s3, align 4
  %64 = call i32 @vcprm(i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = call i32 @vec_perm(i32 %58, i32 %59, i32 %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @s0, align 4
  %69 = load i32, i32* @s1, align 4
  %70 = load i32, i32* @s2, align 4
  %71 = load i32, i32* @s3, align 4
  %72 = call i32 @vcprm(i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = call i32 @vec_perm(i32 %66, i32 %67, i32 %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load float*, float** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = call i32 @vec_st(i32 %74, i32 15, float* %78)
  %80 = load i32, i32* %16, align 4
  %81 = load float*, float** %6, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = call i32 @vec_st(i32 %80, i32 0, float* %84)
  br label %86

86:                                               ; preds = %24
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 4
  store i32 %88, i32* %11, align 4
  br label %19

89:                                               ; preds = %19
  ret void
}

declare dso_local i32 @vec_ld(i32, float*) #1

declare dso_local i32 @vec_perm(i32, i32, i32) #1

declare dso_local i32 @vcprm(i32, i32, i32, i32) #1

declare dso_local i32 @vec_madd(i32, i32, i32) #1

declare dso_local i32 @vec_st(i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
