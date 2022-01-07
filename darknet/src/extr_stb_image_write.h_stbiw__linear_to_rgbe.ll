; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__linear_to_rgbe.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__linear_to_rgbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stbiw__linear_to_rgbe(i8* %0, float* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store float* %1, float** %4, align 8
  %8 = load float*, float** %4, align 8
  %9 = getelementptr inbounds float, float* %8, i64 0
  %10 = load float, float* %9, align 4
  %11 = load float*, float** %4, align 8
  %12 = getelementptr inbounds float, float* %11, i64 1
  %13 = load float, float* %12, align 4
  %14 = load float*, float** %4, align 8
  %15 = getelementptr inbounds float, float* %14, i64 2
  %16 = load float, float* %15, align 4
  %17 = call float @stbiw__max(float %13, float %16)
  %18 = call float @stbiw__max(float %10, float %17)
  store float %18, float* %6, align 4
  %19 = load float, float* %6, align 4
  %20 = fcmp olt float %19, 0x3949F623E0000000
  br i1 %20, label %21, label %30

21:                                               ; preds = %2
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %29, align 1
  br label %66

30:                                               ; preds = %2
  %31 = load float, float* %6, align 4
  %32 = call i64 @frexp(float %31, i32* %5)
  %33 = sitofp i64 %32 to float
  %34 = fmul float %33, 2.560000e+02
  %35 = load float, float* %6, align 4
  %36 = fdiv float %34, %35
  store float %36, float* %7, align 4
  %37 = load float*, float** %4, align 8
  %38 = getelementptr inbounds float, float* %37, i64 0
  %39 = load float, float* %38, align 4
  %40 = load float, float* %7, align 4
  %41 = fmul float %39, %40
  %42 = fptoui float %41 to i8
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 %42, i8* %44, align 1
  %45 = load float*, float** %4, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  %47 = load float, float* %46, align 4
  %48 = load float, float* %7, align 4
  %49 = fmul float %47, %48
  %50 = fptoui float %49 to i8
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 %50, i8* %52, align 1
  %53 = load float*, float** %4, align 8
  %54 = getelementptr inbounds float, float* %53, i64 2
  %55 = load float, float* %54, align 4
  %56 = load float, float* %7, align 4
  %57 = fmul float %55, %56
  %58 = fptoui float %57 to i8
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  store i8 %58, i8* %60, align 1
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 128
  %63 = trunc i32 %62 to i8
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  store i8 %63, i8* %65, align 1
  br label %66

66:                                               ; preds = %30, %21
  ret void
}

declare dso_local float @stbiw__max(float, float) #1

declare dso_local i64 @frexp(float, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
