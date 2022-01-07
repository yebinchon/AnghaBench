; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tinterlace.c_lowpass_line_complex_c_16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tinterlace.c_lowpass_line_complex_c_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32)* @lowpass_line_complex_c_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lowpass_line_complex_c_16(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %24 = load i32*, i32** %7, align 8
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %9, align 8
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sdiv i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32* %30, i32** %15, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sdiv i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32* %35, i32** %16, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32* %39, i32** %17, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %18, align 8
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %136, %6
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %139

48:                                               ; preds = %44
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @av_le2ne16(i32 %53)
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %21, align 4
  %56 = shl i32 %55, 1
  store i32 %56, i32* %22, align 4
  %57 = load i32*, i32** %15, align 8
  %58 = load i32, i32* %19, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @av_le2ne16(i32 %61)
  %63 = load i32*, i32** %16, align 8
  %64 = load i32, i32* %19, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @av_le2ne16(i32 %67)
  %69 = add nsw i32 %62, %68
  store i32 %69, i32* %23, align 4
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %22, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %23, align 4
  %74 = add nsw i32 %72, %73
  %75 = shl i32 %74, 1
  %76 = add nsw i32 4, %75
  %77 = load i32*, i32** %17, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @av_le2ne16(i32 %81)
  %83 = sub nsw i32 %76, %82
  %84 = load i32*, i32** %18, align 8
  %85 = load i32, i32* %19, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @av_le2ne16(i32 %88)
  %90 = sub nsw i32 %83, %89
  %91 = ashr i32 %90, 3
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @av_clip(i32 %91, i32 0, i32 %92)
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %23, align 4
  %95 = load i32, i32* %22, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %48
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %21, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = load i32, i32* %21, align 4
  %103 = call i32 @av_le2ne16(i32 %102)
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %115

108:                                              ; preds = %97
  %109 = load i32, i32* %20, align 4
  %110 = call i32 @av_le2ne16(i32 %109)
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %108, %101
  br label %135

116:                                              ; preds = %48
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* %21, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i32, i32* %21, align 4
  %122 = call i32 @av_le2ne16(i32 %121)
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* %19, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  br label %134

127:                                              ; preds = %116
  %128 = load i32, i32* %20, align 4
  %129 = call i32 @av_le2ne16(i32 %128)
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %129, i32* %133, align 4
  br label %134

134:                                              ; preds = %127, %120
  br label %135

135:                                              ; preds = %134, %115
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %19, align 4
  br label %44

139:                                              ; preds = %44
  ret void
}

declare dso_local i32 @av_le2ne16(i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
