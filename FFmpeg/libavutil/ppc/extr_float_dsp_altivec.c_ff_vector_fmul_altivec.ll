; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/ppc/extr_float_dsp_altivec.c_ff_vector_fmul_altivec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/ppc/extr_float_dsp_altivec.c_ff_vector_fmul_altivec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vector_fmul_altivec(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = call i32 @vec_splat_u32(i32 0)
  store i32 %14, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %60, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sub nsw i32 %17, 7
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %15
  %21 = load float*, float** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %21, i64 %23
  %25 = call i32 @vec_ld(i32 0, float* %24)
  store i32 %25, i32* %10, align 4
  %26 = load float*, float** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  %30 = call i32 @vec_ld(i32 0, float* %29)
  store i32 %30, i32* %12, align 4
  %31 = load float*, float** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = call i32 @vec_ld(i32 16, float* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @vec_madd(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load float*, float** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = call i32 @vec_ld(i32 16, float* %44)
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @vec_madd(i32 %40, i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load float*, float** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  %53 = call i32 @vec_st(i32 %48, i32 0, float* %52)
  %54 = load i32, i32* %11, align 4
  %55 = load float*, float** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  %59 = call i32 @vec_st(i32 %54, i32 16, float* %58)
  br label %60

60:                                               ; preds = %20
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 8
  store i32 %62, i32* %9, align 4
  br label %15

63:                                               ; preds = %15
  ret void
}

declare dso_local i32 @vec_splat_u32(i32) #1

declare dso_local i32 @vec_ld(i32, float*) #1

declare dso_local i32 @vec_madd(i32, i32, i32) #1

declare dso_local i32 @vec_st(i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
