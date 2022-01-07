; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/ppc/extr_float_dsp_vsx.c_ff_vector_fmul_vsx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/ppc/extr_float_dsp_vsx.c_ff_vector_fmul_vsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vector_fmul_vsx(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = call i32 @vec_splat_u32(i32 0)
  store i32 %13, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %58, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 %16, 7
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %14
  %20 = load float*, float** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  %24 = call i32 @vec_vsx_ld(i32 0, float* %23)
  store i32 %24, i32* %10, align 4
  %25 = load float*, float** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = call i32 @vec_vsx_ld(i32 16, float* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load float*, float** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = call i32 @vec_vsx_ld(i32 0, float* %34)
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @vec_madd(i32 %30, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load float*, float** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %39, i64 %41
  %43 = call i32 @vec_vsx_ld(i32 16, float* %42)
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @vec_madd(i32 %38, i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load float*, float** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = call i32 @vec_vsx_st(i32 %46, i32 0, float* %50)
  %52 = load i32, i32* %11, align 4
  %53 = load float*, float** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  %57 = call i32 @vec_vsx_st(i32 %52, i32 16, float* %56)
  br label %58

58:                                               ; preds = %19
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 8
  store i32 %60, i32* %9, align 4
  br label %14

61:                                               ; preds = %14
  ret void
}

declare dso_local i32 @vec_splat_u32(i32) #1

declare dso_local i32 @vec_vsx_ld(i32, float*) #1

declare dso_local i32 @vec_madd(i32, i32, i32) #1

declare dso_local i32 @vec_vsx_st(i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
