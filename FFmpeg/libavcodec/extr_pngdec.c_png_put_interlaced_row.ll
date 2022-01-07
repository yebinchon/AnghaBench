; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_png_put_interlaced_row.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_png_put_interlaced_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@png_pass_mask = common dso_local global i32* null, align 8
@png_pass_dsp_mask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32*)* @png_put_interlaced_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_put_interlaced_row(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %24 = load i32*, i32** @png_pass_mask, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load i32*, i32** @png_pass_dsp_mask, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %220 [
    i32 1, label %35
    i32 2, label %94
    i32 4, label %157
  ]

35:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %90, %35
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %93

40:                                               ; preds = %36
  %41 = load i32, i32* %13, align 4
  %42 = and i32 %41, 7
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = shl i32 %43, %44
  %46 = and i32 %45, 128
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %40
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %17, align 4
  %51 = ashr i32 %50, 3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %17, align 4
  %56 = and i32 %55, 7
  %57 = sub nsw i32 7, %56
  %58 = ashr i32 %54, %57
  %59 = and i32 %58, 1
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %16, align 4
  %61 = ashr i32 65407, %60
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = ashr i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %61
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %16, align 4
  %71 = sub nsw i32 7, %70
  %72 = shl i32 %69, %71
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = ashr i32 %74, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %72
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %48, %40
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %16, align 4
  %83 = shl i32 %81, %82
  %84 = and i32 %83, 128
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %17, align 4
  br label %89

89:                                               ; preds = %86, %80
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %36

93:                                               ; preds = %36
  br label %262

94:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %153, %94
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %156

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = and i32 %100, 3
  %102 = mul nsw i32 2, %101
  store i32 %102, i32* %22, align 4
  %103 = load i32, i32* %13, align 4
  %104 = and i32 %103, 7
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %16, align 4
  %107 = shl i32 %105, %106
  %108 = and i32 %107, 128
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %143

110:                                              ; preds = %99
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %17, align 4
  %113 = ashr i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %17, align 4
  %118 = and i32 %117, 3
  %119 = mul nsw i32 2, %118
  %120 = sub nsw i32 6, %119
  %121 = ashr i32 %116, %120
  %122 = and i32 %121, 3
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %22, align 4
  %124 = ashr i32 65343, %123
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %13, align 4
  %127 = ashr i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %124
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %22, align 4
  %134 = sub nsw i32 6, %133
  %135 = shl i32 %132, %134
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %13, align 4
  %138 = ashr i32 %137, 2
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %135
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %110, %99
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %16, align 4
  %146 = shl i32 %144, %145
  %147 = and i32 %146, 128
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %17, align 4
  br label %152

152:                                              ; preds = %149, %143
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %13, align 4
  br label %95

156:                                              ; preds = %95
  br label %262

157:                                              ; preds = %6
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %158

158:                                              ; preds = %216, %157
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %219

162:                                              ; preds = %158
  %163 = load i32, i32* %13, align 4
  %164 = and i32 %163, 1
  %165 = mul nsw i32 4, %164
  store i32 %165, i32* %23, align 4
  %166 = load i32, i32* %13, align 4
  %167 = and i32 %166, 7
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %16, align 4
  %170 = shl i32 %168, %169
  %171 = and i32 %170, 128
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %206

173:                                              ; preds = %162
  %174 = load i32*, i32** %12, align 8
  %175 = load i32, i32* %17, align 4
  %176 = ashr i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %17, align 4
  %181 = and i32 %180, 1
  %182 = mul nsw i32 4, %181
  %183 = sub nsw i32 4, %182
  %184 = ashr i32 %179, %183
  %185 = and i32 %184, 15
  store i32 %185, i32* %18, align 4
  %186 = load i32, i32* %23, align 4
  %187 = ashr i32 65295, %186
  %188 = load i32*, i32** %7, align 8
  %189 = load i32, i32* %13, align 4
  %190 = ashr i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, %187
  store i32 %194, i32* %192, align 4
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* %23, align 4
  %197 = sub nsw i32 4, %196
  %198 = shl i32 %195, %197
  %199 = load i32*, i32** %7, align 8
  %200 = load i32, i32* %13, align 4
  %201 = ashr i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %198
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %173, %162
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* %16, align 4
  %209 = shl i32 %207, %208
  %210 = and i32 %209, 128
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load i32, i32* %17, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %17, align 4
  br label %215

215:                                              ; preds = %212, %206
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %13, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %13, align 4
  br label %158

219:                                              ; preds = %158
  br label %262

220:                                              ; preds = %6
  %221 = load i32, i32* %9, align 4
  %222 = ashr i32 %221, 3
  store i32 %222, i32* %19, align 4
  %223 = load i32*, i32** %7, align 8
  store i32* %223, i32** %20, align 8
  %224 = load i32*, i32** %12, align 8
  store i32* %224, i32** %21, align 8
  store i32 0, i32* %13, align 4
  br label %225

225:                                              ; preds = %258, %220
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %8, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %261

229:                                              ; preds = %225
  %230 = load i32, i32* %13, align 4
  %231 = and i32 %230, 7
  store i32 %231, i32* %16, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* %16, align 4
  %234 = shl i32 %232, %233
  %235 = and i32 %234, 128
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %229
  %238 = load i32*, i32** %20, align 8
  %239 = load i32*, i32** %21, align 8
  %240 = load i32, i32* %19, align 4
  %241 = call i32 @memcpy(i32* %238, i32* %239, i32 %240)
  br label %242

242:                                              ; preds = %237, %229
  %243 = load i32, i32* %19, align 4
  %244 = load i32*, i32** %20, align 8
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32* %246, i32** %20, align 8
  %247 = load i32, i32* %14, align 4
  %248 = load i32, i32* %16, align 4
  %249 = shl i32 %247, %248
  %250 = and i32 %249, 128
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %242
  %253 = load i32, i32* %19, align 4
  %254 = load i32*, i32** %21, align 8
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  store i32* %256, i32** %21, align 8
  br label %257

257:                                              ; preds = %252, %242
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %13, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %13, align 4
  br label %225

261:                                              ; preds = %225
  br label %262

262:                                              ; preds = %261, %219, %156, %93
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
