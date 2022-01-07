; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_acontrast.c_filter_flt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_acontrast.c_filter_flt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI_2 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i32, i32, float)* @filter_flt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_flt(i8** %0, i8** %1, i32 %2, i32 %3, float %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store float %4, float* %10, align 4
  %16 = load i8**, i8*** %7, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to float*
  store float* %19, float** %11, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to float*
  store float* %23, float** %12, align 8
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %65, %5
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %53, %28
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load float*, float** %11, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %34, i64 %36
  %38 = load float, float* %37, align 4
  %39 = load float, float* @M_PI_2, align 4
  %40 = fmul float %38, %39
  store float %40, float* %15, align 4
  %41 = load float, float* %15, align 4
  %42 = load float, float* %10, align 4
  %43 = load float, float* %15, align 4
  %44 = fmul float %43, 4.000000e+00
  %45 = call float @sinf(float %44) #2
  %46 = fmul float %42, %45
  %47 = fadd float %41, %46
  %48 = call float @sinf(float %47) #2
  %49 = load float*, float** %12, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %49, i64 %51
  store float %48, float* %52, align 4
  br label %53

53:                                               ; preds = %33
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %29

56:                                               ; preds = %29
  %57 = load i32, i32* %14, align 4
  %58 = load float*, float** %12, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds float, float* %58, i64 %59
  store float* %60, float** %12, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load float*, float** %11, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds float, float* %62, i64 %63
  store float* %64, float** %11, align 8
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %24

68:                                               ; preds = %24
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
