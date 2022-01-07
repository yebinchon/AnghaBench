; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_samplefmt.c_av_samples_copy.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_samplefmt.c_av_samples_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_samples_copy(i32** %0, i32** %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
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
  store i32** %0, i32*** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = call i32 @av_sample_fmt_is_planar(i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = load i32, i32* %13, align 4
  br label %27

26:                                               ; preds = %7
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 1, %26 ]
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @av_get_bytes_per_sample(i32 %29)
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %13, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = phi i32 [ 1, %33 ], [ %35, %34 ]
  %38 = mul nsw i32 %30, %37
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %17, align 4
  %41 = mul nsw i32 %39, %40
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 %46, %45
  store i32 %47, i32* %11, align 4
  %48 = load i32**, i32*** %8, align 8
  %49 = getelementptr inbounds i32*, i32** %48, i64 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32**, i32*** %9, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ult i32* %50, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %36
  %56 = load i32**, i32*** %9, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32**, i32*** %8, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 0
  %61 = load i32*, i32** %60, align 8
  %62 = ptrtoint i32* %58 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  br label %77

66:                                               ; preds = %36
  %67 = load i32**, i32*** %8, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32**, i32*** %9, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = ptrtoint i32* %69 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  br label %77

77:                                               ; preds = %66, %55
  %78 = phi i64 [ %65, %55 ], [ %76, %66 ]
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp sge i64 %78, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %77
  store i32 0, i32* %19, align 4
  br label %83

83:                                               ; preds = %106, %82
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %83
  %88 = load i32**, i32*** %8, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32**, i32*** %9, align 8
  %97 = load i32, i32* %19, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @memcpy(i32* %95, i32* %103, i32 %104)
  br label %106

106:                                              ; preds = %87
  %107 = load i32, i32* %19, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %19, align 4
  br label %83

109:                                              ; preds = %83
  br label %138

110:                                              ; preds = %77
  store i32 0, i32* %19, align 4
  br label %111

111:                                              ; preds = %134, %110
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %137

115:                                              ; preds = %111
  %116 = load i32**, i32*** %8, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32**, i32*** %9, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %18, align 4
  %133 = call i32 @memmove(i32* %123, i32* %131, i32 %132)
  br label %134

134:                                              ; preds = %115
  %135 = load i32, i32* %19, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %19, align 4
  br label %111

137:                                              ; preds = %111
  br label %138

138:                                              ; preds = %137, %109
  ret i32 0
}

declare dso_local i32 @av_sample_fmt_is_planar(i32) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
