; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nlmeans.c_compute_unsafe_ssd_integral_image.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nlmeans.c_compute_unsafe_ssd_integral_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* @compute_unsafe_ssd_integral_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_unsafe_ssd_integral_image(i64* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i64* %0, i64** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %37 = load i32, i32* %17, align 4
  store i32 %37, i32* %28, align 4
  br label %38

38:                                               ; preds = %154, %13
  %39 = load i32, i32* %28, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %26, align 4
  %42 = add nsw i32 %40, %41
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %157

44:                                               ; preds = %38
  %45 = load i64*, i64** %14, align 8
  %46 = load i32, i32* %28, align 4
  %47 = load i32, i32* %15, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %48, %49
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %45, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %14, align 8
  %56 = load i32, i32* %28, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* %15, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %55, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %54, %65
  store i64 %66, i64* %29, align 8
  %67 = load i32, i32* %28, align 4
  %68 = load i32, i32* %22, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32, i32* %24, align 4
  %71 = sub nsw i32 %70, 1
  %72 = call i32 @av_clip(i32 %69, i32 0, i32 %71)
  store i32 %72, i32* %30, align 4
  %73 = load i32, i32* %28, align 4
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %21, align 4
  %76 = add nsw i32 %74, %75
  %77 = sub nsw i32 %73, %76
  %78 = load i32, i32* %24, align 4
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @av_clip(i32 %77, i32 0, i32 %79)
  store i32 %80, i32* %31, align 4
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %27, align 4
  br label %82

82:                                               ; preds = %150, %44
  %83 = load i32, i32* %27, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %25, align 4
  %86 = add nsw i32 %84, %85
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %153

88:                                               ; preds = %82
  %89 = load i32, i32* %27, align 4
  %90 = load i32, i32* %22, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load i32, i32* %23, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @av_clip(i32 %91, i32 0, i32 %93)
  store i32 %94, i32* %32, align 4
  %95 = load i32, i32* %27, align 4
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %20, align 4
  %98 = add nsw i32 %96, %97
  %99 = sub nsw i32 %95, %98
  %100 = load i32, i32* %23, align 4
  %101 = sub nsw i32 %100, 1
  %102 = call i32 @av_clip(i32 %99, i32 0, i32 %101)
  store i32 %102, i32* %33, align 4
  %103 = load i32*, i32** %18, align 8
  %104 = load i32, i32* %30, align 4
  %105 = load i32, i32* %19, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* %32, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %103, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %34, align 4
  %112 = load i32*, i32** %18, align 8
  %113 = load i32, i32* %31, align 4
  %114 = load i32, i32* %19, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load i32, i32* %33, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %112, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %35, align 4
  %121 = load i32, i32* %34, align 4
  %122 = load i32, i32* %35, align 4
  %123 = sub nsw i32 %121, %122
  store i32 %123, i32* %36, align 4
  %124 = load i32, i32* %36, align 4
  %125 = load i32, i32* %36, align 4
  %126 = mul nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = load i64, i64* %29, align 8
  %129 = add nsw i64 %128, %127
  store i64 %129, i64* %29, align 8
  %130 = load i64*, i64** %14, align 8
  %131 = load i32, i32* %28, align 4
  %132 = sub nsw i32 %131, 1
  %133 = load i32, i32* %15, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32, i32* %27, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %130, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %29, align 8
  %141 = add nsw i64 %139, %140
  %142 = load i64*, i64** %14, align 8
  %143 = load i32, i32* %28, align 4
  %144 = load i32, i32* %15, align 4
  %145 = mul nsw i32 %143, %144
  %146 = load i32, i32* %27, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %142, i64 %148
  store i64 %141, i64* %149, align 8
  br label %150

150:                                              ; preds = %88
  %151 = load i32, i32* %27, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %27, align 4
  br label %82

153:                                              ; preds = %82
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %28, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %28, align 4
  br label %38

157:                                              ; preds = %38
  ret void
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
