; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_smartblur.c_blur.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_smartblur.c_blur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SwsContext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32, i32, %struct.SwsContext*)* @blur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blur(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.SwsContext* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.SwsContext*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [4 x i32*], align 16
  %23 = alloca [4 x i32*], align 16
  %24 = alloca [4 x i32], align 16
  %25 = alloca [4 x i32], align 16
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.SwsContext* %7, %struct.SwsContext** %16, align 8
  %26 = bitcast [4 x i32*]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 32, i1 false)
  %27 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 0
  %28 = load i32*, i32** %11, align 8
  store i32* %28, i32** %27, align 8
  %29 = bitcast [4 x i32*]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 32, i1 false)
  %30 = getelementptr inbounds [4 x i32*], [4 x i32*]* %23, i64 0, i64 0
  %31 = load i32*, i32** %9, align 8
  store i32* %31, i32** %30, align 8
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %32, i64 1
  %35 = getelementptr inbounds i32, i32* %32, i64 4
  br label %36

36:                                               ; preds = %36, %8
  %37 = phi i32* [ %34, %8 ], [ %38, %36 ]
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = icmp eq i32* %38, %35
  br i1 %39, label %40, label %36

40:                                               ; preds = %36
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds i32, i32* %41, i64 1
  %44 = getelementptr inbounds i32, i32* %41, i64 4
  br label %45

45:                                               ; preds = %45, %40
  %46 = phi i32* [ %43, %40 ], [ %47, %45 ]
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = icmp eq i32* %47, %44
  br i1 %48, label %49, label %45

49:                                               ; preds = %45
  %50 = load %struct.SwsContext*, %struct.SwsContext** %16, align 8
  %51 = getelementptr inbounds [4 x i32*], [4 x i32*]* %22, i64 0, i64 0
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %53 = load i32, i32* %14, align 4
  %54 = getelementptr inbounds [4 x i32*], [4 x i32*]* %23, i64 0, i64 0
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %25, i64 0, i64 0
  %56 = call i32 @sws_scale(%struct.SwsContext* %50, i32** %51, i32* %52, i32 0, i32 %53, i32** %54, i32* %55)
  %57 = load i32, i32* %15, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %170

59:                                               ; preds = %49
  store i32 0, i32* %18, align 4
  br label %60

60:                                               ; preds = %166, %59
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %169

64:                                               ; preds = %60
  store i32 0, i32* %17, align 4
  br label %65

65:                                               ; preds = %162, %64
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %165

69:                                               ; preds = %65
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %12, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %71, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %70, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %19, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %10, align 4
  %83 = mul nsw i32 %81, %82
  %84 = add nsw i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %79, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %20, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %21, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %69
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %15, align 4
  %96 = mul nsw i32 2, %95
  %97 = icmp sgt i32 %94, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %93
  %99 = load i32, i32* %19, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %10, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %101, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %100, i64 %106
  store i32 %99, i32* %107, align 4
  br label %125

108:                                              ; preds = %93
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %108
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %15, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %10, align 4
  %120 = mul nsw i32 %118, %119
  %121 = add nsw i32 %117, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  store i32 %115, i32* %123, align 4
  br label %124

124:                                              ; preds = %112, %108
  br label %125

125:                                              ; preds = %124, %98
  br label %161

126:                                              ; preds = %69
  %127 = load i32, i32* %21, align 4
  %128 = sub nsw i32 0, %127
  %129 = load i32, i32* %15, align 4
  %130 = mul nsw i32 2, %129
  %131 = icmp sgt i32 %128, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %126
  %133 = load i32, i32* %19, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %10, align 4
  %138 = mul nsw i32 %136, %137
  %139 = add nsw i32 %135, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %134, i64 %140
  store i32 %133, i32* %141, align 4
  br label %160

142:                                              ; preds = %126
  %143 = load i32, i32* %21, align 4
  %144 = sub nsw i32 0, %143
  %145 = load i32, i32* %15, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %142
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %148, %149
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %10, align 4
  %155 = mul nsw i32 %153, %154
  %156 = add nsw i32 %152, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %151, i64 %157
  store i32 %150, i32* %158, align 4
  br label %159

159:                                              ; preds = %147, %142
  br label %160

160:                                              ; preds = %159, %132
  br label %161

161:                                              ; preds = %160, %125
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %17, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %17, align 4
  br label %65

165:                                              ; preds = %65
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %18, align 4
  br label %60

169:                                              ; preds = %60
  br label %284

170:                                              ; preds = %49
  %171 = load i32, i32* %15, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %283

173:                                              ; preds = %170
  store i32 0, i32* %18, align 4
  br label %174

174:                                              ; preds = %279, %173
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* %14, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %282

178:                                              ; preds = %174
  store i32 0, i32* %17, align 4
  br label %179

179:                                              ; preds = %275, %178
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %13, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %278

183:                                              ; preds = %179
  %184 = load i32*, i32** %11, align 8
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %12, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 %185, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %184, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %19, align 4
  %193 = load i32*, i32** %9, align 8
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* %10, align 4
  %197 = mul nsw i32 %195, %196
  %198 = add nsw i32 %194, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %193, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %20, align 4
  %202 = load i32, i32* %19, align 4
  %203 = load i32, i32* %20, align 4
  %204 = sub nsw i32 %202, %203
  store i32 %204, i32* %21, align 4
  %205 = load i32, i32* %21, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %241

207:                                              ; preds = %183
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* %15, align 4
  %210 = sub nsw i32 0, %209
  %211 = icmp sle i32 %208, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %207
  %213 = load i32, i32* %19, align 4
  %214 = load i32*, i32** %9, align 8
  %215 = load i32, i32* %17, align 4
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* %10, align 4
  %218 = mul nsw i32 %216, %217
  %219 = add nsw i32 %215, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %214, i64 %220
  store i32 %213, i32* %221, align 4
  br label %240

222:                                              ; preds = %207
  %223 = load i32, i32* %21, align 4
  %224 = load i32, i32* %15, align 4
  %225 = mul nsw i32 -2, %224
  %226 = icmp sle i32 %223, %225
  br i1 %226, label %227, label %239

227:                                              ; preds = %222
  %228 = load i32, i32* %20, align 4
  %229 = load i32, i32* %15, align 4
  %230 = sub nsw i32 %228, %229
  %231 = load i32*, i32** %9, align 8
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* %10, align 4
  %235 = mul nsw i32 %233, %234
  %236 = add nsw i32 %232, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %231, i64 %237
  store i32 %230, i32* %238, align 4
  br label %239

239:                                              ; preds = %227, %222
  br label %240

240:                                              ; preds = %239, %212
  br label %274

241:                                              ; preds = %183
  %242 = load i32, i32* %21, align 4
  %243 = load i32, i32* %15, align 4
  %244 = icmp sge i32 %242, %243
  br i1 %244, label %245, label %255

245:                                              ; preds = %241
  %246 = load i32, i32* %19, align 4
  %247 = load i32*, i32** %9, align 8
  %248 = load i32, i32* %17, align 4
  %249 = load i32, i32* %18, align 4
  %250 = load i32, i32* %10, align 4
  %251 = mul nsw i32 %249, %250
  %252 = add nsw i32 %248, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %247, i64 %253
  store i32 %246, i32* %254, align 4
  br label %273

255:                                              ; preds = %241
  %256 = load i32, i32* %21, align 4
  %257 = load i32, i32* %15, align 4
  %258 = mul nsw i32 2, %257
  %259 = icmp sge i32 %256, %258
  br i1 %259, label %260, label %272

260:                                              ; preds = %255
  %261 = load i32, i32* %20, align 4
  %262 = load i32, i32* %15, align 4
  %263 = add nsw i32 %261, %262
  %264 = load i32*, i32** %9, align 8
  %265 = load i32, i32* %17, align 4
  %266 = load i32, i32* %18, align 4
  %267 = load i32, i32* %10, align 4
  %268 = mul nsw i32 %266, %267
  %269 = add nsw i32 %265, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %264, i64 %270
  store i32 %263, i32* %271, align 4
  br label %272

272:                                              ; preds = %260, %255
  br label %273

273:                                              ; preds = %272, %245
  br label %274

274:                                              ; preds = %273, %240
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %17, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %17, align 4
  br label %179

278:                                              ; preds = %179
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %18, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %18, align 4
  br label %174

282:                                              ; preds = %174
  br label %283

283:                                              ; preds = %282, %170
  br label %284

284:                                              ; preds = %283, %169
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sws_scale(%struct.SwsContext*, i32**, i32*, i32, i32, i32**, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
