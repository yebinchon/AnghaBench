; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_bit_allocate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_bit_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_BIAS_EXP = common dso_local global i32 0, align 4
@dc_code_tab = common dso_local global i32* null, align 8
@ht_code_tab = common dso_local global i32* null, align 8
@fast_gain_tab = common dso_local global i32* null, align 8
@slow_decay_tab = common dso_local global i32** null, align 8
@misc_decay_tab = common dso_local global i32*** null, align 8
@slow_gain_tab = common dso_local global i32*** null, align 8
@fast_decay_tab = common dso_local global i32**** null, align 8
@fast_gain_adj_tab = common dso_local global i32*** null, align 8
@hearing_thresh_tab = common dso_local global i32*** null, align 8
@band_ofs_tab = common dso_local global i32** null, align 8
@band_low_tab = common dso_local global i32* null, align 8
@bap_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32, i32, i32, i32)* @bit_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bit_allocate(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %35 = load i32, i32* @MAX_BIAS_EXP, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %19, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %20, align 8
  %39 = load i32, i32* @MAX_BIAS_EXP, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %21, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %42 = load i32*, i32** @dc_code_tab, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %24, align 4
  %48 = load i32*, i32** @ht_code_tab, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %25, align 4
  %54 = load i32*, i32** @fast_gain_tab, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %26, align 4
  %59 = load i32**, i32*** @slow_decay_tab, align 8
  %60 = load i32, i32* %24, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %27, align 4
  %68 = load i32***, i32**** @misc_decay_tab, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32**, i32*** %68, i64 %70
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %24, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %28, align 4
  %81 = load i32***, i32**** @slow_gain_tab, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32**, i32*** %81, i64 %83
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %29, align 8
  %90 = load i32****, i32***** @fast_decay_tab, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32***, i32**** %90, i64 %92
  %94 = load i32***, i32**** %93, align 8
  %95 = load i32, i32* %24, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32**, i32*** %94, i64 %96
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %30, align 8
  %103 = load i32***, i32**** @fast_gain_adj_tab, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32**, i32*** %103, i64 %105
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %24, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  store i32* %111, i32** %31, align 8
  %112 = load i32***, i32**** @hearing_thresh_tab, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32**, i32*** %112, i64 %114
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %25, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %32, align 8
  store i32 0, i32* %33, align 4
  br label %121

121:                                              ; preds = %136, %9
  %122 = load i32, i32* %33, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %121
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* %33, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 48, %130
  %132 = mul nsw i32 %131, 64
  %133 = load i32, i32* %33, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %41, i64 %134
  store i32 %132, i32* %135, align 4
  br label %136

136:                                              ; preds = %125
  %137 = load i32, i32* %33, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %33, align 4
  br label %121

139:                                              ; preds = %121
  %140 = load i32**, i32*** @band_ofs_tab, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %31, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %31, align 8
  store i32 0, i32* %33, align 4
  br label %152

152:                                              ; preds = %197, %139
  %153 = load i32, i32* %33, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %200

156:                                              ; preds = %152
  %157 = load i32, i32* %22, align 4
  %158 = load i32*, i32** %30, align 8
  %159 = load i32, i32* %33, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %157, %162
  %164 = load i32, i32* %33, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %41, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %26, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load i32*, i32** %31, align 8
  %171 = load i32, i32* %33, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %169, %174
  %176 = call i32 @log_add(i32 %163, i32 %175)
  store i32 %176, i32* %22, align 4
  %177 = load i32, i32* %23, align 4
  %178 = load i32, i32* %27, align 4
  %179 = sub nsw i32 %177, %178
  %180 = load i32, i32* %33, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %41, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %29, align 8
  %185 = load i32, i32* %33, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = sub nsw i32 %183, %188
  %190 = call i32 @log_add(i32 %179, i32 %189)
  store i32 %190, i32* %23, align 4
  %191 = load i32, i32* %22, align 4
  %192 = load i32, i32* %23, align 4
  %193 = call i32 @FFMAX(i32 %191, i32 %192)
  %194 = load i32, i32* %33, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %38, i64 %195
  store i32 %193, i32* %196, align 4
  br label %197

197:                                              ; preds = %156
  %198 = load i32, i32* %33, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %33, align 4
  br label %152

200:                                              ; preds = %152
  store i32 0, i32* %22, align 4
  %201 = load i32, i32* %10, align 4
  %202 = sub nsw i32 %201, 1
  store i32 %202, i32* %33, align 4
  br label %203

203:                                              ; preds = %231, %200
  %204 = load i32, i32* %33, align 4
  %205 = load i32*, i32** @band_low_tab, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp sgt i32 %204, %209
  br i1 %210, label %211, label %234

211:                                              ; preds = %203
  %212 = load i32, i32* %22, align 4
  %213 = load i32, i32* %28, align 4
  %214 = sub nsw i32 %212, %213
  %215 = load i32, i32* %33, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %41, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %26, align 4
  %220 = sub nsw i32 %218, %219
  %221 = call i32 @log_add(i32 %214, i32 %220)
  store i32 %221, i32* %22, align 4
  %222 = load i32, i32* %33, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %38, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %22, align 4
  %227 = call i32 @FFMAX(i32 %225, i32 %226)
  %228 = load i32, i32* %33, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %38, i64 %229
  store i32 %227, i32* %230, align 4
  br label %231

231:                                              ; preds = %211
  %232 = load i32, i32* %33, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %33, align 4
  br label %203

234:                                              ; preds = %203
  store i32 0, i32* %33, align 4
  br label %235

235:                                              ; preds = %253, %234
  %236 = load i32, i32* %33, align 4
  %237 = load i32, i32* %10, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %256

239:                                              ; preds = %235
  %240 = load i32, i32* %33, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %38, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** %32, align 8
  %245 = load i32, i32* %33, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @FFMAX(i32 %243, i32 %248)
  %250 = load i32, i32* %33, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %38, i64 %251
  store i32 %249, i32* %252, align 4
  br label %253

253:                                              ; preds = %239
  %254 = load i32, i32* %33, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %33, align 4
  br label %235

256:                                              ; preds = %235
  %257 = load i32, i32* %11, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %261, label %259

259:                                              ; preds = %256
  %260 = call i32 @calc_lowcomp(i32* %38)
  br label %261

261:                                              ; preds = %259, %256
  store i32 0, i32* %33, align 4
  br label %262

262:                                              ; preds = %290, %261
  %263 = load i32, i32* %33, align 4
  %264 = load i32, i32* %10, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %293

266:                                              ; preds = %262
  %267 = load i32, i32* %18, align 4
  %268 = sub nsw i32 %267, 64
  %269 = mul nsw i32 16, %268
  %270 = load i32, i32* %33, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %41, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %269, %273
  %275 = load i32, i32* %33, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %38, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = sub nsw i32 %274, %278
  %280 = ashr i32 %279, 5
  store i32 %280, i32* %34, align 4
  %281 = load i32*, i32** @bap_tab, align 8
  %282 = load i32, i32* %34, align 4
  %283 = call i64 @av_clip_uintp2(i32 %282, i32 6)
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** %14, align 8
  %287 = load i32, i32* %33, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  store i32 %285, i32* %289, align 4
  br label %290

290:                                              ; preds = %266
  %291 = load i32, i32* %33, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %33, align 4
  br label %262

293:                                              ; preds = %262
  %294 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %294)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_add(i32, i32) #2

declare dso_local i32 @FFMAX(i32, i32) #2

declare dso_local i32 @calc_lowcomp(i32*) #2

declare dso_local i64 @av_clip_uintp2(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
