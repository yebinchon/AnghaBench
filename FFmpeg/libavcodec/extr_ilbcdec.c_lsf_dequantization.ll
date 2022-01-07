; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_lsf_dequantization.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ilbcdec.c_lsf_dequantization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LSF_NSPLIT = common dso_local global i32 0, align 4
@lsf_dim_codebook = common dso_local global i32* null, align 8
@lsf_codebook = common dso_local global i32* null, align 8
@lsf_size_codebook = common dso_local global i32* null, align 8
@LPC_FILTERORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @lsf_dequantization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsf_dequantization(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %74, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @LSF_NSPLIT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %77

15:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %50, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** @lsf_dim_codebook, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %16
  %25 = load i32*, i32** @lsf_codebook, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** @lsf_dim_codebook, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %31, %36
  %38 = add nsw i32 %26, %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %25, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %24
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %16

53:                                               ; preds = %16
  %54 = load i32*, i32** @lsf_dim_codebook, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load i32*, i32** @lsf_size_codebook, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** @lsf_dim_codebook, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %65, %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %53
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %11

77:                                               ; preds = %11
  %78 = load i32, i32* %6, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %152

80:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %148, %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @LSF_NSPLIT, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %151

85:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %124, %85
  %87 = load i32, i32* %8, align 4
  %88 = load i32*, i32** @lsf_dim_codebook, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %87, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %86
  %95 = load i32*, i32** @lsf_codebook, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* @LSF_NSPLIT, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** @lsf_dim_codebook, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %103, %108
  %110 = add nsw i32 %96, %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %95, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* @LPC_FILTERORDER, align 4
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  store i32 %115, i32* %123, align 4
  br label %124

124:                                              ; preds = %94
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %86

127:                                              ; preds = %86
  %128 = load i32*, i32** @lsf_dim_codebook, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %9, align 4
  %135 = load i32*, i32** @lsf_size_codebook, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** @lsf_dim_codebook, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %139, %144
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %127
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %81

151:                                              ; preds = %81
  br label %152

152:                                              ; preds = %151, %77
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
