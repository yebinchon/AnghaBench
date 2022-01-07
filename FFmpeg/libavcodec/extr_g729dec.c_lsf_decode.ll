; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g729dec.c_lsf_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g729dec.c_lsf_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MA_NP = common dso_local global i64 0, align 8
@lsf_decode.min_distance = internal constant [2 x i32] [i32 10, i32 5], align 4
@cb_lsp_1st = common dso_local global i64** null, align 8
@cb_lsp_2nd = common dso_local global i64** null, align 8
@cb_ma_predictor_sum = common dso_local global i64** null, align 8
@cb_ma_predictor = common dso_local global i64*** null, align 8
@LSFQ_DIFF_MIN = common dso_local global i32 0, align 4
@LSFQ_MIN = common dso_local global i32 0, align 4
@LSFQ_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64**, i64, i64, i64, i64)* @lsf_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsf_decode(i64* %0, i64** %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64** %1, i64*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load i64, i64* @MA_NP, align 8
  %19 = add i64 %18, 1
  %20 = load i64**, i64*** %8, align 8
  %21 = load i64, i64* @MA_NP, align 8
  %22 = getelementptr inbounds i64*, i64** %20, i64 %21
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %15, align 8
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %73, %6
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %76

27:                                               ; preds = %24
  %28 = load i64**, i64*** @cb_lsp_1st, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i64*, i64** %28, i64 %29
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64**, i64*** @cb_lsp_2nd, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i64*, i64** %36, i64 %37
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %35, %43
  %45 = load i64*, i64** %15, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %44, i64* %48, align 8
  %49 = load i64**, i64*** @cb_lsp_1st, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i64*, i64** %49, i64 %50
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 5
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64**, i64*** @cb_lsp_2nd, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i64*, i64** %58, i64 %59
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 5
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %57, %66
  %68 = load i64*, i64** %15, align 8
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 5
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  store i64 %67, i64* %72, align 8
  br label %73

73:                                               ; preds = %27
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %24

76:                                               ; preds = %24
  store i32 0, i32* %14, align 4
  br label %77

77:                                               ; preds = %130, %76
  %78 = load i32, i32* %14, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %133

80:                                               ; preds = %77
  store i32 1, i32* %13, align 4
  br label %81

81:                                               ; preds = %126, %80
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %82, 10
  br i1 %83, label %84, label %129

84:                                               ; preds = %81
  %85 = load i64*, i64** %15, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %85, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %15, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %90, %95
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* @lsf_decode.min_distance, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 %96, %101
  %103 = lshr i64 %102, 1
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %84
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64*, i64** %15, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = sub i64 %115, %109
  store i64 %116, i64* %114, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64*, i64** %15, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %123, %118
  store i64 %124, i64* %122, align 8
  br label %125

125:                                              ; preds = %107, %84
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %81

129:                                              ; preds = %81
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %77

133:                                              ; preds = %77
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %196, %133
  %135 = load i32, i32* %13, align 4
  %136 = icmp slt i32 %135, 10
  br i1 %136, label %137, label %199

137:                                              ; preds = %134
  %138 = load i64*, i64** %15, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load i64**, i64*** @cb_ma_predictor_sum, align 8
  %144 = load i64, i64* %9, align 8
  %145 = getelementptr inbounds i64*, i64** %143, i64 %144
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = mul i64 %142, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %153

153:                                              ; preds = %185, %137
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* @MA_NP, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %188

158:                                              ; preds = %153
  %159 = load i64**, i64*** %8, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64*, i64** %159, i64 %161
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64***, i64**** @cb_ma_predictor, align 8
  %169 = load i64, i64* %9, align 8
  %170 = getelementptr inbounds i64**, i64*** %168, i64 %169
  %171 = load i64**, i64*** %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64*, i64** %171, i64 %173
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = mul i64 %167, %179
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = add i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %17, align 4
  br label %185

185:                                              ; preds = %158
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %14, align 4
  br label %153

188:                                              ; preds = %153
  %189 = load i32, i32* %17, align 4
  %190 = ashr i32 %189, 15
  %191 = sext i32 %190 to i64
  %192 = load i64*, i64** %7, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  store i64 %191, i64* %195, align 8
  br label %196

196:                                              ; preds = %188
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %13, align 4
  br label %134

199:                                              ; preds = %134
  %200 = load i64*, i64** %7, align 8
  %201 = load i32, i32* @LSFQ_DIFF_MIN, align 4
  %202 = load i32, i32* @LSFQ_MIN, align 4
  %203 = load i32, i32* @LSFQ_MAX, align 4
  %204 = call i32 @ff_acelp_reorder_lsf(i64* %200, i32 %201, i32 %202, i32 %203, i32 10)
  ret void
}

declare dso_local i32 @ff_acelp_reorder_lsf(i64*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
