; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1.c_ff_g723_1_inverse_quant.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1.c_ff_g723_1_inverse_quant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lsp_band0 = common dso_local global i32** null, align 8
@lsp_band1 = common dso_local global i32** null, align 8
@lsp_band2 = common dso_local global i32** null, align 8
@LPC_ORDER = common dso_local global i32 0, align 4
@dc_lsp = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_g723_1_inverse_quant(i32* %0, i32* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 256, i32* %9, align 4
  store i32 12288, i32* %10, align 4
  br label %25

18:                                               ; preds = %4
  store i32 512, i32* %9, align 4
  store i32 23552, i32* %10, align 4
  %19 = load i64*, i64** %7, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 2
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 0, i64* %22, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32**, i32*** @lsp_band0, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  %36 = load i32**, i32*** @lsp_band0, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32*, i32** %36, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %43, i32* %45, align 4
  %46 = load i32**, i32*** @lsp_band0, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32*, i32** %46, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %53, i32* %55, align 4
  %56 = load i32**, i32*** @lsp_band1, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32*, i32** %56, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 %63, i32* %65, align 4
  %66 = load i32**, i32*** @lsp_band1, align 8
  %67 = load i64*, i64** %7, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32*, i32** %66, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  store i32 %73, i32* %75, align 4
  %76 = load i32**, i32*** @lsp_band1, align 8
  %77 = load i64*, i64** %7, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32*, i32** %76, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 5
  store i32 %83, i32* %85, align 4
  %86 = load i32**, i32*** @lsp_band2, align 8
  %87 = load i64*, i64** %7, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 2
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32*, i32** %86, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 6
  store i32 %93, i32* %95, align 4
  %96 = load i32**, i32*** @lsp_band2, align 8
  %97 = load i64*, i64** %7, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 2
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32*, i32** %96, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 7
  store i32 %103, i32* %105, align 4
  %106 = load i32**, i32*** @lsp_band2, align 8
  %107 = load i64*, i64** %7, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 2
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32*, i32** %106, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 8
  store i32 %113, i32* %115, align 4
  %116 = load i32**, i32*** @lsp_band2, align 8
  %117 = load i64*, i64** %7, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 2
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds i32*, i32** %116, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 9
  store i32 %123, i32* %125, align 4
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %159, %25
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @LPC_ORDER, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %162

130:                                              ; preds = %126
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** @dc_lsp, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %135, %140
  %142 = load i32, i32* %10, align 4
  %143 = mul nsw i32 %141, %142
  %144 = add nsw i32 %143, 16384
  %145 = ashr i32 %144, 15
  store i32 %145, i32* %13, align 4
  %146 = load i32*, i32** @dc_lsp, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %150, %151
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %152
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %130
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %126

162:                                              ; preds = %126
  store i32 0, i32* %11, align 4
  br label %163

163:                                              ; preds = %262, %162
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @LPC_ORDER, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %265

167:                                              ; preds = %163
  %168 = load i32*, i32** %5, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @FFMAX(i32 %170, i32 384)
  %172 = load i32*, i32** %5, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  store i32 %171, i32* %173, align 4
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* @LPC_ORDER, align 4
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @FFMIN(i32 %179, i32 32256)
  %181 = load i32*, i32** %5, align 8
  %182 = load i32, i32* @LPC_ORDER, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  store i32 %180, i32* %185, align 4
  store i32 1, i32* %12, align 4
  br label %186

186:                                              ; preds = %226, %167
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @LPC_ORDER, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %229

190:                                              ; preds = %186
  %191 = load i32, i32* %9, align 4
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %191, %197
  %199 = load i32*, i32** %5, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %198, %203
  store i32 %204, i32* %13, align 4
  %205 = load i32, i32* %13, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %225

207:                                              ; preds = %190
  %208 = load i32, i32* %13, align 4
  %209 = ashr i32 %208, 1
  store i32 %209, i32* %13, align 4
  %210 = load i32, i32* %13, align 4
  %211 = load i32*, i32** %5, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %211, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %216, %210
  store i32 %217, i32* %215, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load i32*, i32** %5, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, %218
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %207, %190
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %12, align 4
  br label %186

229:                                              ; preds = %186
  store i32 1, i32* %14, align 4
  store i32 1, i32* %12, align 4
  br label %230

230:                                              ; preds = %254, %229
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* @LPC_ORDER, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %257

234:                                              ; preds = %230
  %235 = load i32*, i32** %5, align 8
  %236 = load i32, i32* %12, align 4
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %235, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %9, align 4
  %242 = add nsw i32 %240, %241
  %243 = load i32*, i32** %5, align 8
  %244 = load i32, i32* %12, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = sub nsw i32 %242, %247
  %249 = sub nsw i32 %248, 4
  store i32 %249, i32* %13, align 4
  %250 = load i32, i32* %13, align 4
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %234
  store i32 0, i32* %14, align 4
  br label %257

253:                                              ; preds = %234
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %12, align 4
  br label %230

257:                                              ; preds = %252, %230
  %258 = load i32, i32* %14, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  br label %265

261:                                              ; preds = %257
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %11, align 4
  br label %163

265:                                              ; preds = %260, %163
  %266 = load i32, i32* %14, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %276, label %268

268:                                              ; preds = %265
  %269 = load i32*, i32** %5, align 8
  %270 = load i32*, i32** %6, align 8
  %271 = load i32, i32* @LPC_ORDER, align 4
  %272 = sext i32 %271 to i64
  %273 = mul i64 %272, 4
  %274 = trunc i64 %273 to i32
  %275 = call i32 @memcpy(i32* %269, i32* %270, i32 %274)
  br label %276

276:                                              ; preds = %268, %265
  ret void
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
