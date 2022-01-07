; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ssim.c_ssim_endn_8bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ssim.c_ssim_endn_8bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float ([4 x i32]*, [4 x i32]*, i32)* @ssim_endn_8bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @ssim_endn_8bit([4 x i32]* %0, [4 x i32]* %1, i32 %2) #0 {
  %4 = alloca [4 x i32]*, align 8
  %5 = alloca [4 x i32]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store [4 x i32]* %0, [4 x i32]** %4, align 8
  store [4 x i32]* %1, [4 x i32]** %5, align 8
  store i32 %2, i32* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %134, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %137

13:                                               ; preds = %9
  %14 = load [4 x i32]*, [4 x i32]** %4, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 %16
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load [4 x i32]*, [4 x i32]** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 %23
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %19, %26
  %28 = load [4 x i32]*, [4 x i32]** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %28, i64 %30
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %31, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %27, %33
  %35 = load [4 x i32]*, [4 x i32]** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i64 %38
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %39, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %34, %41
  %43 = load [4 x i32]*, [4 x i32]** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i64 %45
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load [4 x i32]*, [4 x i32]** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i64 %52
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %53, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %48, %55
  %57 = load [4 x i32]*, [4 x i32]** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i64 %59
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %56, %62
  %64 = load [4 x i32]*, [4 x i32]** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %64, i64 %67
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %63, %70
  %72 = load [4 x i32]*, [4 x i32]** %4, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i64 %74
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %75, i64 0, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = load [4 x i32]*, [4 x i32]** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %78, i64 %81
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %82, i64 0, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %77, %84
  %86 = load [4 x i32]*, [4 x i32]** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %86, i64 %88
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %89, i64 0, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %85, %91
  %93 = load [4 x i32]*, [4 x i32]** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %93, i64 %96
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %97, i64 0, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %92, %99
  %101 = load [4 x i32]*, [4 x i32]** %4, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %101, i64 %103
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %104, i64 0, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = load [4 x i32]*, [4 x i32]** %4, align 8
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %107, i64 %110
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %111, i64 0, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %106, %113
  %115 = load [4 x i32]*, [4 x i32]** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %115, i64 %117
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %118, i64 0, i64 3
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %114, %120
  %122 = load [4 x i32]*, [4 x i32]** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %122, i64 %125
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %126, i64 0, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %121, %128
  %130 = call i64 @ssim_end1(i32 %42, i32 %71, i32 %100, i32 %129)
  %131 = sitofp i64 %130 to float
  %132 = load float, float* %7, align 4
  %133 = fadd float %132, %131
  store float %133, float* %7, align 4
  br label %134

134:                                              ; preds = %13
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %8, align 4
  br label %9

137:                                              ; preds = %9
  %138 = load float, float* %7, align 4
  ret float %138
}

declare dso_local i64 @ssim_end1(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
