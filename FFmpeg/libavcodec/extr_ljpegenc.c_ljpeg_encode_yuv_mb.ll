; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ljpegenc.c_ljpeg_encode_yuv_mb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ljpegenc.c_ljpeg_encode_yuv_mb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, %struct.TYPE_6__*, i32, i32, i32)* @ljpeg_encode_yuv_mb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ljpeg_encode_yuv_mb(%struct.TYPE_5__* %0, i32* %1, %struct.TYPE_6__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %185

33:                                               ; preds = %30, %6
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %181, %33
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %184

37:                                               ; preds = %34
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %17, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %18, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %19, align 4
  store i32 0, i32* %16, align 4
  br label %59

59:                                               ; preds = %177, %37
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %18, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %180

63:                                               ; preds = %59
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %173, %63
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %176

68:                                               ; preds = %64
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %79, %80
  %82 = mul nsw i32 %76, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %75, i64 %83
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %84, i64 %90
  store i32* %91, i32** %14, align 8
  %92 = load i32, i32* %16, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %68
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 128, i32* %20, align 4
  br label %108

104:                                              ; preds = %100, %97
  %105 = load i32*, i32** %14, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 -1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %20, align 4
  br label %108

108:                                              ; preds = %104, %103
  br label %143

109:                                              ; preds = %94, %68
  %110 = load i32, i32* %15, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i32*, i32** %14, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sub nsw i32 0, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %20, align 4
  br label %142

122:                                              ; preds = %112, %109
  %123 = load i32, i32* %20, align 4
  %124 = load i32*, i32** %14, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sub nsw i32 0, %125
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %19, align 4
  %133 = sub nsw i32 0, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %14, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 -1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @PREDICT(i32 %123, i32 %130, i32 %136, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %122, %115
  br label %143

143:                                              ; preds = %142, %108
  %144 = load i32, i32* %13, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load i32*, i32** %8, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %20, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @ff_mjpeg_encode_dc(i32* %147, i32 %151, i32 %154, i32 %157)
  br label %172

159:                                              ; preds = %143
  %160 = load i32*, i32** %8, align 8
  %161 = load i32*, i32** %14, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %20, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @ff_mjpeg_encode_dc(i32* %160, i32 %164, i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %159, %146
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  br label %64

176:                                              ; preds = %64
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %16, align 4
  br label %59

180:                                              ; preds = %59
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %13, align 4
  br label %34

184:                                              ; preds = %34
  br label %304

185:                                              ; preds = %30
  store i32 0, i32* %13, align 4
  br label %186

186:                                              ; preds = %300, %185
  %187 = load i32, i32* %13, align 4
  %188 = icmp slt i32 %187, 3
  br i1 %188, label %189, label %303

189:                                              ; preds = %186
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %24, align 4
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %25, align 4
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %26, align 4
  store i32 0, i32* %23, align 4
  br label %211

211:                                              ; preds = %296, %189
  %212 = load i32, i32* %23, align 4
  %213 = load i32, i32* %25, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %299

215:                                              ; preds = %211
  store i32 0, i32* %22, align 4
  br label %216

216:                                              ; preds = %292, %215
  %217 = load i32, i32* %22, align 4
  %218 = load i32, i32* %24, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %295

220:                                              ; preds = %216
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i32**, i32*** %222, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32*, i32** %223, i64 %225
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %26, align 4
  %229 = load i32, i32* %25, align 4
  %230 = load i32, i32* %12, align 4
  %231 = mul nsw i32 %229, %230
  %232 = load i32, i32* %23, align 4
  %233 = add nsw i32 %231, %232
  %234 = mul nsw i32 %228, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %227, i64 %235
  %237 = load i32, i32* %24, align 4
  %238 = load i32, i32* %11, align 4
  %239 = mul nsw i32 %237, %238
  %240 = load i32, i32* %22, align 4
  %241 = add nsw i32 %239, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %236, i64 %242
  store i32* %243, i32** %21, align 8
  %244 = load i32, i32* %27, align 4
  %245 = load i32*, i32** %21, align 8
  %246 = load i32, i32* %26, align 4
  %247 = sub nsw i32 0, %246
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %245, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** %21, align 8
  %253 = load i32, i32* %26, align 4
  %254 = sub nsw i32 0, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %21, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 -1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %10, align 4
  %262 = call i32 @PREDICT(i32 %244, i32 %251, i32 %257, i32 %260, i32 %261)
  %263 = load i32, i32* %13, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %278

265:                                              ; preds = %220
  %266 = load i32*, i32** %8, align 8
  %267 = load i32*, i32** %21, align 8
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %27, align 4
  %270 = sub nsw i32 %268, %269
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @ff_mjpeg_encode_dc(i32* %266, i32 %270, i32 %273, i32 %276)
  br label %291

278:                                              ; preds = %220
  %279 = load i32*, i32** %8, align 8
  %280 = load i32*, i32** %21, align 8
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %27, align 4
  %283 = sub nsw i32 %281, %282
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @ff_mjpeg_encode_dc(i32* %279, i32 %283, i32 %286, i32 %289)
  br label %291

291:                                              ; preds = %278, %265
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %22, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %22, align 4
  br label %216

295:                                              ; preds = %216
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %23, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %23, align 4
  br label %211

299:                                              ; preds = %211
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %13, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %13, align 4
  br label %186

303:                                              ; preds = %186
  br label %304

304:                                              ; preds = %303, %184
  ret void
}

declare dso_local i32 @PREDICT(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_mjpeg_encode_dc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
