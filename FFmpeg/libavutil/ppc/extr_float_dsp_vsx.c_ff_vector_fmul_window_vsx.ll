; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/ppc/extr_float_dsp_vsx.c_ff_vector_fmul_window_vsx.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/ppc/extr_float_dsp_vsx.c_ff_vector_fmul_window_vsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vector_fmul_window_vsx(float* %0, float* %1, float* %2, float* %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = call i32 @vcprm(i32 3, i32 2, i32 1, i32 0)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load float*, float** %6, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds float, float* %23, i64 %24
  store float* %25, float** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load float*, float** %9, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds float, float* %27, i64 %28
  store float* %29, float** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load float*, float** %7, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds float, float* %31, i64 %32
  store float* %33, float** %7, align 8
  %34 = call i64 @vec_splat_u32(i32 0)
  store i64 %34, i64* %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 0, %35
  %37 = mul nsw i32 %36, 4
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 %38, 4
  %40 = sub nsw i32 %39, 16
  store i32 %40, i32* %20, align 4
  br label %41

41:                                               ; preds = %93, %5
  %42 = load i32, i32* %19, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %98

44:                                               ; preds = %41
  %45 = load i32, i32* %19, align 4
  %46 = load float*, float** %7, align 8
  %47 = call i64 @vec_vsx_ld(i32 %45, float* %46)
  store i64 %47, i64* %14, align 8
  %48 = load i32, i32* %20, align 4
  %49 = load float*, float** %8, align 8
  %50 = call i64 @vec_vsx_ld(i32 %48, float* %49)
  store i64 %50, i64* %15, align 8
  %51 = load i32, i32* %19, align 4
  %52 = load float*, float** %9, align 8
  %53 = call i64 @vec_vsx_ld(i32 %51, float* %52)
  store i64 %53, i64* %16, align 8
  %54 = load i32, i32* %20, align 4
  %55 = load float*, float** %9, align 8
  %56 = call i64 @vec_vsx_ld(i32 %54, float* %55)
  store i64 %56, i64* %17, align 8
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i32, i32* %18, align 4
  %60 = call i64 @vec_perm(i64 %57, i64 %58, i32 %59)
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %17, align 8
  %63 = load i32, i32* %18, align 4
  %64 = call i64 @vec_perm(i64 %61, i64 %62, i32 %63)
  store i64 %64, i64* %17, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @vec_madd(i64 %65, i64 %66, i64 %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i64 @vec_nmsub(i64 %69, i64 %70, i64 %71)
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i64 @vec_madd(i64 %73, i64 %74, i64 %75)
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i64 @vec_madd(i64 %77, i64 %78, i64 %79)
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load i32, i32* %18, align 4
  %84 = call i64 @vec_perm(i64 %81, i64 %82, i32 %83)
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i32, i32* %19, align 4
  %87 = load float*, float** %6, align 8
  %88 = call i32 @vec_vsx_st(i64 %85, i32 %86, float* %87)
  %89 = load i64, i64* %13, align 8
  %90 = load i32, i32* %20, align 4
  %91 = load float*, float** %6, align 8
  %92 = call i32 @vec_vsx_st(i64 %89, i32 %90, float* %91)
  br label %93

93:                                               ; preds = %44
  %94 = load i32, i32* %19, align 4
  %95 = add nsw i32 %94, 16
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  %97 = sub nsw i32 %96, 16
  store i32 %97, i32* %20, align 4
  br label %41

98:                                               ; preds = %41
  ret void
}

declare dso_local i32 @vcprm(i32, i32, i32, i32) #1

declare dso_local i64 @vec_splat_u32(i32) #1

declare dso_local i64 @vec_vsx_ld(i32, float*) #1

declare dso_local i64 @vec_perm(i64, i64, i32) #1

declare dso_local i64 @vec_madd(i64, i64, i64) #1

declare dso_local i64 @vec_nmsub(i64, i64, i64) #1

declare dso_local i32 @vec_vsx_st(i64, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
