; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/ppc/extr_float_dsp_altivec.c_ff_vector_fmul_reverse_altivec.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/ppc/extr_float_dsp_altivec.c_ff_vector_fmul_reverse_altivec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vector_fmul_reverse_altivec(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = call i32 @vec_splat_u32(i32 0)
  store i32 %18, i32* %17, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sub nsw i32 %19, 4
  %21 = load float*, float** %7, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds float, float* %21, i64 %22
  store float* %23, float** %7, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %98, %4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 7
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %101

29:                                               ; preds = %24
  %30 = load float*, float** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds float, float* %30, i64 %33
  %35 = call i32 @vec_ld(i32 0, float* %34)
  store i32 %35, i32* %12, align 4
  %36 = load float*, float** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %36, i64 %38
  %40 = call i32 @vec_ld(i32 0, float* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @vec_mergel(i32 %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load float*, float** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = sub i64 0, %46
  %48 = getelementptr inbounds float, float* %44, i64 %47
  %49 = call i32 @vec_ld(i32 -16, float* %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @vec_mergeh(i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load float*, float** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  %57 = call i32 @vec_ld(i32 16, float* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @vec_mergel(i32 %58, i32 %59)
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @vec_mergeh(i32 %61, i32 %62)
  %64 = call i32 @vec_mergeh(i32 %60, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @vec_mergel(i32 %65, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @vec_madd(i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @vec_mergeh(i32 %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load float*, float** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  %80 = call i32 @vec_st(i32 %75, i32 0, float* %79)
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @vec_mergel(i32 %81, i32 %82)
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @vec_mergeh(i32 %84, i32 %85)
  %87 = call i32 @vec_mergeh(i32 %83, i32 %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @vec_madd(i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load float*, float** %5, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  %97 = call i32 @vec_st(i32 %92, i32 16, float* %96)
  br label %98

98:                                               ; preds = %29
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 8
  store i32 %100, i32* %9, align 4
  br label %24

101:                                              ; preds = %24
  ret void
}

declare dso_local i32 @vec_splat_u32(i32) #1

declare dso_local i32 @vec_ld(i32, float*) #1

declare dso_local i32 @vec_mergel(i32, i32) #1

declare dso_local i32 @vec_mergeh(i32, i32) #1

declare dso_local i32 @vec_madd(i32, i32, i32) #1

declare dso_local i32 @vec_st(i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
