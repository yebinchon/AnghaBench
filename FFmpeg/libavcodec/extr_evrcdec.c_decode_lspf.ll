; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_evrcdec.c_decode_lspf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_evrcdec.c_decode_lspf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, float*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@evrc_lspq_codebooks = common dso_local global float*** null, align 8
@evrc_lspq_nb_codebooks = common dso_local global i32* null, align 8
@evrc_lspq_codebooks_row_sizes = common dso_local global i32** null, align 8
@FILTER_ORDER = common dso_local global i32 0, align 4
@MIN_LSP_SEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @decode_lspf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_lspf(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca float**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %10 = load float***, float**** @evrc_lspq_codebooks, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds float**, float*** %10, i64 %13
  %15 = load float**, float*** %14, align 8
  store float** %15, float*** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %73, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32*, i32** @evrc_lspq_nb_codebooks, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %17, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %16
  %26 = load i32**, i32*** @evrc_lspq_codebooks_row_sizes, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load float**, float*** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float*, float** %36, i64 %38
  %40 = load float*, float** %39, align 8
  store float* %40, float** %9, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %69, %25
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load float*, float** %9, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %46, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load float*, float** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds float, float* %64, i64 %67
  store float %61, float* %68, align 4
  br label %69

69:                                               ; preds = %45
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %41

72:                                               ; preds = %41
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %16

76:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %77

77:                                               ; preds = %100, %76
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @FILTER_ORDER, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %77
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load float*, float** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = load float, float* %87, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load float*, float** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %91, i64 %94
  %96 = load float, float* %95, align 4
  %97 = fcmp ole float %88, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %81
  store i32 -1, i32* %2, align 4
  br label %152

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %77

103:                                              ; preds = %77
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %148, %103
  %105 = load i32, i32* %5, align 4
  %106 = load i32*, i32** @evrc_lspq_nb_codebooks, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 1
  %113 = icmp slt i32 %105, %112
  br i1 %113, label %114, label %151

114:                                              ; preds = %104
  %115 = load i32**, i32*** @evrc_lspq_codebooks_row_sizes, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32*, i32** %115, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %7, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load float*, float** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %129, i64 %131
  %133 = load float, float* %132, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load float*, float** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %136, i64 %139
  %141 = load float, float* %140, align 4
  %142 = fsub float %133, %141
  %143 = load i64, i64* @MIN_LSP_SEP, align 8
  %144 = sitofp i64 %143 to float
  %145 = fcmp ole float %142, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %114
  store i32 -1, i32* %2, align 4
  br label %152

147:                                              ; preds = %114
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %104

151:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %146, %98
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
