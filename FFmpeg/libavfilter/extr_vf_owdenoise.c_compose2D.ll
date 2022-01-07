; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_owdenoise.c_compose2D.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_owdenoise.c_compose2D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32, i32, i32, i32, i32)* @compose2D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compose2D(float* %0, float* %1, float* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store float* %1, float** %10, align 8
  store float* %2, float** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %19

19:                                               ; preds = %78, %8
  %20 = load i32, i32* %17, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %81

23:                                               ; preds = %19
  store i32 0, i32* %18, align 4
  br label %24

24:                                               ; preds = %74, %23
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %24
  %29 = load float*, float** %9, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %17, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %29, i64 %33
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %18, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %34, i64 %38
  %40 = load float*, float** %10, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %17, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %40, i64 %44
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %18, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %45, i64 %49
  %51 = load float*, float** %11, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %17, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %51, i64 %55
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %18, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %56, i64 %60
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %12, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %18, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %14, align 4
  %72 = sdiv i32 %70, %71
  %73 = call i32 @compose(float* %39, float* %50, float* %61, i32 %64, i32 %72)
  br label %74

74:                                               ; preds = %28
  %75 = load i32, i32* %18, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %18, align 4
  br label %24

77:                                               ; preds = %24
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  br label %19

81:                                               ; preds = %19
  ret void
}

declare dso_local i32 @compose(float*, float*, float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
