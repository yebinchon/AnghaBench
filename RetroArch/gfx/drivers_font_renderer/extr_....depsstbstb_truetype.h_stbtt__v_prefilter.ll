; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__v_prefilter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__v_prefilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBTT_MAX_OVERSAMPLE = common dso_local global i32 0, align 4
@STBTT__OVER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32)* @stbtt__v_prefilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbtt__v_prefilter(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @STBTT_MAX_OVERSAMPLE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sub i32 %21, %22
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %279, %5
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %282

28:                                               ; preds = %24
  store i32 0, i32* %16, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @memset(i8* %20, i32 0, i32 %29)
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %185 [
    i32 2, label %32
    i32 3, label %83
    i32 4, label %134
  ]

32:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %79, %32
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %82

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @STBTT__OVER_MASK, align 4
  %48 = and i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %20, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %45, %52
  %54 = load i32, i32* %16, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %16, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %56, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add i32 %63, %64
  %66 = load i32, i32* @STBTT__OVER_MASK, align 4
  %67 = and i32 %65, %66
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %20, i64 %68
  store i8 %62, i8* %69, align 1
  %70 = load i32, i32* %16, align 4
  %71 = udiv i32 %70, 2
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  store i8 %72, i8* %78, align 1
  br label %79

79:                                               ; preds = %37
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  br label %33

82:                                               ; preds = %33
  br label %237

83:                                               ; preds = %28
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %130, %83
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %133

88:                                               ; preds = %84
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %9, align 4
  %92 = mul nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %89, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @STBTT__OVER_MASK, align 4
  %99 = and i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %20, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = sub nsw i32 %96, %103
  %105 = load i32, i32* %16, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %16, align 4
  %107 = load i8*, i8** %6, align 8
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %9, align 4
  %110 = mul nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add i32 %114, %115
  %117 = load i32, i32* @STBTT__OVER_MASK, align 4
  %118 = and i32 %116, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %20, i64 %119
  store i8 %113, i8* %120, align 1
  %121 = load i32, i32* %16, align 4
  %122 = udiv i32 %121, 3
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %124, i64 %128
  store i8 %123, i8* %129, align 1
  br label %130

130:                                              ; preds = %88
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  br label %84

133:                                              ; preds = %84
  br label %237

134:                                              ; preds = %28
  store i32 0, i32* %15, align 4
  br label %135

135:                                              ; preds = %181, %134
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %184

139:                                              ; preds = %135
  %140 = load i8*, i8** %6, align 8
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %9, align 4
  %143 = mul nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %140, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* @STBTT__OVER_MASK, align 4
  %150 = and i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %20, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = sub nsw i32 %147, %154
  %156 = load i32, i32* %16, align 4
  %157 = add i32 %156, %155
  store i32 %157, i32* %16, align 4
  %158 = load i8*, i8** %6, align 8
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %9, align 4
  %161 = mul nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %158, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %10, align 4
  %167 = add i32 %165, %166
  %168 = load i32, i32* @STBTT__OVER_MASK, align 4
  %169 = and i32 %167, %168
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %20, i64 %170
  store i8 %164, i8* %171, align 1
  %172 = load i32, i32* %16, align 4
  %173 = udiv i32 %172, 4
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %6, align 8
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %9, align 4
  %178 = mul nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %175, i64 %179
  store i8 %174, i8* %180, align 1
  br label %181

181:                                              ; preds = %139
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %135

184:                                              ; preds = %135
  br label %237

185:                                              ; preds = %28
  store i32 0, i32* %15, align 4
  br label %186

186:                                              ; preds = %233, %185
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %14, align 4
  %189 = icmp sle i32 %187, %188
  br i1 %189, label %190, label %236

190:                                              ; preds = %186
  %191 = load i8*, i8** %6, align 8
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %9, align 4
  %194 = mul nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %191, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* @STBTT__OVER_MASK, align 4
  %201 = and i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %20, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = sub nsw i32 %198, %205
  %207 = load i32, i32* %16, align 4
  %208 = add i32 %207, %206
  store i32 %208, i32* %16, align 4
  %209 = load i8*, i8** %6, align 8
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* %9, align 4
  %212 = mul nsw i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %209, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %10, align 4
  %218 = add i32 %216, %217
  %219 = load i32, i32* @STBTT__OVER_MASK, align 4
  %220 = and i32 %218, %219
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %20, i64 %221
  store i8 %215, i8* %222, align 1
  %223 = load i32, i32* %16, align 4
  %224 = load i32, i32* %10, align 4
  %225 = udiv i32 %223, %224
  %226 = trunc i32 %225 to i8
  %227 = load i8*, i8** %6, align 8
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* %9, align 4
  %230 = mul nsw i32 %228, %229
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %227, i64 %231
  store i8 %226, i8* %232, align 1
  br label %233

233:                                              ; preds = %190
  %234 = load i32, i32* %15, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %15, align 4
  br label %186

236:                                              ; preds = %186
  br label %237

237:                                              ; preds = %236, %184, %133, %82
  br label %238

238:                                              ; preds = %273, %237
  %239 = load i32, i32* %15, align 4
  %240 = load i32, i32* %8, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %276

242:                                              ; preds = %238
  %243 = load i8*, i8** %6, align 8
  %244 = load i32, i32* %15, align 4
  %245 = load i32, i32* %9, align 4
  %246 = mul nsw i32 %244, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %243, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = icmp eq i32 %250, 0
  %252 = zext i1 %251 to i32
  %253 = call i32 @retro_assert(i32 %252)
  %254 = load i32, i32* %15, align 4
  %255 = load i32, i32* @STBTT__OVER_MASK, align 4
  %256 = and i32 %254, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %20, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = load i32, i32* %16, align 4
  %262 = sub i32 %261, %260
  store i32 %262, i32* %16, align 4
  %263 = load i32, i32* %16, align 4
  %264 = load i32, i32* %10, align 4
  %265 = udiv i32 %263, %264
  %266 = trunc i32 %265 to i8
  %267 = load i8*, i8** %6, align 8
  %268 = load i32, i32* %15, align 4
  %269 = load i32, i32* %9, align 4
  %270 = mul nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %267, i64 %271
  store i8 %266, i8* %272, align 1
  br label %273

273:                                              ; preds = %242
  %274 = load i32, i32* %15, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %15, align 4
  br label %238

276:                                              ; preds = %238
  %277 = load i8*, i8** %6, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 1
  store i8* %278, i8** %6, align 8
  br label %279

279:                                              ; preds = %276
  %280 = load i32, i32* %11, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %11, align 4
  br label %24

282:                                              ; preds = %24
  %283 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %283)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @retro_assert(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
