; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/neon/extr_mpegvideo.c_ff_dct_unquantize_h263_neon.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/neon/extr_mpegvideo.c_ff_dct_unquantize_h263_neon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*)* @ff_dct_unquantize_h263_neon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_dct_unquantize_h263_neon(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %26 = call i32 @vdup_n_s16(i32 0)
  store i32 %26, i32* %22, align 4
  %27 = call i32 @vdupq_n_s16(i32 0)
  store i32 %27, i32* %18, align 4
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 %28, 1
  %30 = call i32 @vdupq_n_s16(i32 %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @vdupq_n_s16(i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @vnegq_s16(i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %35, 4
  br i1 %36, label %37, label %104

37:                                               ; preds = %4
  br label %38

38:                                               ; preds = %98, %37
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 8
  br i1 %40, label %41, label %103

41:                                               ; preds = %38
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @vld1q_s16(i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @vcltq_s16(i32 %44, i32 %45)
  %47 = call i32 @vreinterpretq_s16_u16(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  %50 = call i32 @vld1q_s16(i32* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %18, align 4
  %53 = call i32 @vceqq_s16(i32 %51, i32 %52)
  store i32 %53, i32* %23, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @vmulq_s16(i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @vcltq_s16(i32 %57, i32 %58)
  %60 = call i32 @vreinterpretq_s16_u16(i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @vmulq_s16(i32 %61, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @vreinterpretq_u16_s16(i32 %64)
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @vbslq_s16(i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @vreinterpretq_u16_s16(i32 %69)
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @vbslq_s16(i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @vaddq_s16(i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @vceqq_s16(i32 %77, i32 %78)
  store i32 %79, i32* %24, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @vaddq_s16(i32 %80, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %23, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @vbslq_s16(i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %24, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @vbslq_s16(i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @vst1q_s16(i32* %91, i32 %92)
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @vst1q_s16(i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %41
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, 16
  store i32 %100, i32* %7, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 16
  store i32* %102, i32** %8, align 8
  br label %38

103:                                              ; preds = %38
  br label %104

104:                                              ; preds = %103, %4
  %105 = load i32, i32* %7, align 4
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %139

108:                                              ; preds = %104
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @vld1_s16(i32* %109)
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %22, align 4
  %113 = call i32 @vclt_s16(i32 %111, i32 %112)
  %114 = call i32 @vreinterpret_s16_u16(i32 %113)
  store i32 %114, i32* %21, align 4
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %22, align 4
  %117 = call i32 @vceq_s16(i32 %115, i32 %116)
  store i32 %117, i32* %25, align 4
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @vget_high_s16(i32 %119)
  %121 = call i32 @vmul_s16(i32 %118, i32 %120)
  store i32 %121, i32* %20, align 4
  %122 = load i32, i32* %21, align 4
  %123 = call i32 @vreinterpret_u16_s16(i32 %122)
  %124 = load i32, i32* %15, align 4
  %125 = call i32 @vget_high_s16(i32 %124)
  %126 = load i32, i32* %16, align 4
  %127 = call i32 @vget_high_s16(i32 %126)
  %128 = call i32 @vbsl_s16(i32 %123, i32 %125, i32 %127)
  store i32 %128, i32* %21, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %21, align 4
  %131 = call i32 @vadd_s16(i32 %129, i32 %130)
  store i32 %131, i32* %20, align 4
  %132 = load i32, i32* %25, align 4
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %20, align 4
  %135 = call i32 @vbsl_s16(i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %19, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %19, align 4
  %138 = call i32 @vst1_s16(i32* %136, i32 %137)
  br label %139

139:                                              ; preds = %108, %107
  ret void
}

declare dso_local i32 @vdup_n_s16(i32) #1

declare dso_local i32 @vdupq_n_s16(i32) #1

declare dso_local i32 @vnegq_s16(i32) #1

declare dso_local i32 @vld1q_s16(i32*) #1

declare dso_local i32 @vreinterpretq_s16_u16(i32) #1

declare dso_local i32 @vcltq_s16(i32, i32) #1

declare dso_local i32 @vceqq_s16(i32, i32) #1

declare dso_local i32 @vmulq_s16(i32, i32) #1

declare dso_local i32 @vbslq_s16(i32, i32, i32) #1

declare dso_local i32 @vreinterpretq_u16_s16(i32) #1

declare dso_local i32 @vaddq_s16(i32, i32) #1

declare dso_local i32 @vst1q_s16(i32*, i32) #1

declare dso_local i32 @vld1_s16(i32*) #1

declare dso_local i32 @vreinterpret_s16_u16(i32) #1

declare dso_local i32 @vclt_s16(i32, i32) #1

declare dso_local i32 @vceq_s16(i32, i32) #1

declare dso_local i32 @vmul_s16(i32, i32) #1

declare dso_local i32 @vget_high_s16(i32) #1

declare dso_local i32 @vbsl_s16(i32, i32, i32) #1

declare dso_local i32 @vreinterpret_u16_s16(i32) #1

declare dso_local i32 @vadd_s16(i32, i32) #1

declare dso_local i32 @vst1_s16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
