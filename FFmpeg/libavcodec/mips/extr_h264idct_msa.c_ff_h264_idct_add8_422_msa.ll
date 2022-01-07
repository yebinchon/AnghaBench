; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264idct_msa.c_ff_h264_idct_add8_422_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264idct_msa.c_ff_h264_idct_add8_422_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scan8 = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_idct_add8_422_msa(i64** %0, i32* %1, i32* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64** %0, i64*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %94, %5
  %14 = load i32, i32* %12, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %97

16:                                               ; preds = %13
  %17 = load i32, i32* %12, align 4
  %18 = mul nsw i32 %17, 16
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %90, %16
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = mul nsw i32 %21, 16
  %23 = add nsw i32 %22, 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %93

25:                                               ; preds = %19
  %26 = load i64*, i64** %10, align 8
  %27 = load i64*, i64** @scan8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %26, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %25
  %36 = load i64**, i64*** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64*, i64** %36, i64 %39
  %41 = load i64*, i64** %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %41, i64 %47
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %50, 16
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ff_h264_idct_add_msa(i64* %48, i32* %54, i32 %55)
  br label %89

57:                                               ; preds = %25
  %58 = load i32*, i32** %8, align 8
  %59 = bitcast i32* %58 to i64*
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %60, 16
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %57
  %67 = load i64**, i64*** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64*, i64** %67, i64 %70
  %72 = load i64*, i64** %71, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %72, i64 %78
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %11, align 4
  %82 = mul nsw i32 %81, 16
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @ff_h264_idct4x4_addblk_dc_msa(i64* %79, i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %66, %57
  br label %89

89:                                               ; preds = %88, %35
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %19

93:                                               ; preds = %19
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %13

97:                                               ; preds = %13
  store i32 1, i32* %12, align 4
  br label %98

98:                                               ; preds = %183, %97
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %99, 3
  br i1 %100, label %101, label %186

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = mul nsw i32 %102, 16
  %104 = add nsw i32 %103, 4
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %179, %101
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = mul nsw i32 %107, 16
  %109 = add nsw i32 %108, 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %182

111:                                              ; preds = %105
  %112 = load i64*, i64** %10, align 8
  %113 = load i64*, i64** @scan8, align 8
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i64, i64* %112, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %145

122:                                              ; preds = %111
  %123 = load i64**, i64*** %6, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64*, i64** %123, i64 %126
  %128 = load i64*, i64** %127, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %128, i64 %135
  %137 = load i32*, i32** %8, align 8
  %138 = load i32, i32* %11, align 4
  %139 = mul nsw i32 %138, 16
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 4
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @ff_h264_idct_add_msa(i64* %136, i32* %142, i32 %143)
  br label %178

145:                                              ; preds = %111
  %146 = load i32*, i32** %8, align 8
  %147 = bitcast i32* %146 to i64*
  %148 = load i32, i32* %11, align 4
  %149 = mul nsw i32 %148, 16
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %147, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %177

154:                                              ; preds = %145
  %155 = load i64**, i64*** %6, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64*, i64** %155, i64 %158
  %160 = load i64*, i64** %159, align 8
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %160, i64 %167
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %11, align 4
  %171 = mul nsw i32 %170, 16
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 4
  %174 = getelementptr inbounds i32, i32* %169, i64 %173
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @ff_h264_idct4x4_addblk_dc_msa(i64* %168, i32* %174, i32 %175)
  br label %177

177:                                              ; preds = %154, %145
  br label %178

178:                                              ; preds = %177, %122
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %105

182:                                              ; preds = %105
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %12, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %12, align 4
  br label %98

186:                                              ; preds = %98
  ret void
}

declare dso_local i32 @ff_h264_idct_add_msa(i64*, i32*, i32) #1

declare dso_local i32 @ff_h264_idct4x4_addblk_dc_msa(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
