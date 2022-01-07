; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ssim.c_ssim_endn_16bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ssim.c_ssim_endn_16bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float ([4 x i64]*, [4 x i64]*, i32, i32)* @ssim_endn_16bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @ssim_endn_16bit([4 x i64]* %0, [4 x i64]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca [4 x i64]*, align 8
  %6 = alloca [4 x i64]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  store [4 x i64]* %0, [4 x i64]** %5, align 8
  store [4 x i64]* %1, [4 x i64]** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store float 0.000000e+00, float* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %137, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %140

15:                                               ; preds = %11
  %16 = load [4 x i64]*, [4 x i64]** %5, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 %18
  %20 = getelementptr inbounds [4 x i64], [4 x i64]* %19, i64 0, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load [4 x i64]*, [4 x i64]** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %22, i64 %25
  %27 = getelementptr inbounds [4 x i64], [4 x i64]* %26, i64 0, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %21, %28
  %30 = load [4 x i64]*, [4 x i64]** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i64], [4 x i64]* %30, i64 %32
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %33, i64 0, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %29, %35
  %37 = load [4 x i64]*, [4 x i64]** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i64], [4 x i64]* %37, i64 %40
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %41, i64 0, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %36, %43
  %45 = load [4 x i64]*, [4 x i64]** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %45, i64 %47
  %49 = getelementptr inbounds [4 x i64], [4 x i64]* %48, i64 0, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = load [4 x i64]*, [4 x i64]** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i64], [4 x i64]* %51, i64 %54
  %56 = getelementptr inbounds [4 x i64], [4 x i64]* %55, i64 0, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %50, %57
  %59 = load [4 x i64]*, [4 x i64]** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %59, i64 %61
  %63 = getelementptr inbounds [4 x i64], [4 x i64]* %62, i64 0, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %58, %64
  %66 = load [4 x i64]*, [4 x i64]** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %66, i64 %69
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %70, i64 0, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %65, %72
  %74 = load [4 x i64]*, [4 x i64]** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x i64], [4 x i64]* %74, i64 %76
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %77, i64 0, i64 2
  %79 = load i64, i64* %78, align 8
  %80 = load [4 x i64]*, [4 x i64]** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i64], [4 x i64]* %80, i64 %83
  %85 = getelementptr inbounds [4 x i64], [4 x i64]* %84, i64 0, i64 2
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %79, %86
  %88 = load [4 x i64]*, [4 x i64]** %6, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4 x i64], [4 x i64]* %88, i64 %90
  %92 = getelementptr inbounds [4 x i64], [4 x i64]* %91, i64 0, i64 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %87, %93
  %95 = load [4 x i64]*, [4 x i64]** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x i64], [4 x i64]* %95, i64 %98
  %100 = getelementptr inbounds [4 x i64], [4 x i64]* %99, i64 0, i64 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %94, %101
  %103 = load [4 x i64]*, [4 x i64]** %5, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i64], [4 x i64]* %103, i64 %105
  %107 = getelementptr inbounds [4 x i64], [4 x i64]* %106, i64 0, i64 3
  %108 = load i64, i64* %107, align 8
  %109 = load [4 x i64]*, [4 x i64]** %5, align 8
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4 x i64], [4 x i64]* %109, i64 %112
  %114 = getelementptr inbounds [4 x i64], [4 x i64]* %113, i64 0, i64 3
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %108, %115
  %117 = load [4 x i64]*, [4 x i64]** %6, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i64], [4 x i64]* %117, i64 %119
  %121 = getelementptr inbounds [4 x i64], [4 x i64]* %120, i64 0, i64 3
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %116, %122
  %124 = load [4 x i64]*, [4 x i64]** %6, align 8
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [4 x i64], [4 x i64]* %124, i64 %127
  %129 = getelementptr inbounds [4 x i64], [4 x i64]* %128, i64 0, i64 3
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %123, %130
  %132 = load i32, i32* %8, align 4
  %133 = call i64 @ssim_end1x(i64 %44, i64 %73, i64 %102, i64 %131, i32 %132)
  %134 = sitofp i64 %133 to float
  %135 = load float, float* %9, align 4
  %136 = fadd float %135, %134
  store float %136, float* %9, align 4
  br label %137

137:                                              ; preds = %15
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %11

140:                                              ; preds = %11
  %141 = load float, float* %9, align 4
  ret float %141
}

declare dso_local i64 @ssim_end1x(i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
