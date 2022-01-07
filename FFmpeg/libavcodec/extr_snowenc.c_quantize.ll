; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_quantize.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@QROOT = common dso_local global i32 0, align 4
@ff_qexp = common dso_local global i32* null, align 8
@QSHIFT = common dso_local global i32 0, align 4
@ENCODER_EXTRA_BITS = common dso_local global i32 0, align 4
@LOSSLESS_QLOG = common dso_local global i32 0, align 4
@QEXPSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*, i8**, i32, i32)* @quantize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quantize(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2, i8** %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = load i32, i32* @QROOT, align 4
  %37 = mul nsw i32 %36, 16
  %38 = call i32 @av_clip(i32 %35, i32 0, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32*, i32** @ff_qexp, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @QROOT, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @QSHIFT, align 4
  %49 = ashr i32 %47, %48
  %50 = load i32, i32* @ENCODER_EXTRA_BITS, align 4
  %51 = add nsw i32 %49, %50
  %52 = shl i32 %46, %51
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @LOSSLESS_QLOG, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %95

58:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  br label %59

59:                                               ; preds = %91, %58
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  store i32 0, i32* %17, align 4
  br label %64

64:                                               ; preds = %87, %63
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %64
  %69 = load i8**, i8*** %10, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %11, align 4
  %73 = mul nsw i32 %71, %72
  %74 = add nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %69, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %11, align 4
  %83 = mul nsw i32 %81, %82
  %84 = add nsw i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %79, i64 %85
  store i32 %78, i32* %86, align 4
  br label %87

87:                                               ; preds = %68
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %64

90:                                               ; preds = %64
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %18, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %18, align 4
  br label %59

94:                                               ; preds = %59
  br label %285

95:                                               ; preds = %6
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %16, align 4
  %101 = mul nsw i32 3, %100
  %102 = ashr i32 %101, 3
  br label %103

103:                                              ; preds = %99, %98
  %104 = phi i32 [ 0, %98 ], [ %102, %99 ]
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %12, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load i32, i32* @QEXPSHIFT, align 4
  %109 = ashr i32 %107, %108
  %110 = sub nsw i32 %109, 1
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = mul nsw i32 2, %111
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %198, label %115

115:                                              ; preds = %103
  store i32 0, i32* %18, align 4
  br label %116

116:                                              ; preds = %194, %115
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %197

120:                                              ; preds = %116
  store i32 0, i32* %17, align 4
  br label %121

121:                                              ; preds = %190, %120
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %193

125:                                              ; preds = %121
  %126 = load i8**, i8*** %10, align 8
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %11, align 4
  %130 = mul nsw i32 %128, %129
  %131 = add nsw i32 %127, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %126, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = ptrtoint i8* %134 to i32
  store i32 %135, i32* %21, align 4
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* %20, align 4
  %140 = icmp ugt i32 %138, %139
  br i1 %140, label %141, label %180

141:                                              ; preds = %125
  %142 = load i32, i32* %21, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %141
  %145 = load i32, i32* @QEXPSHIFT, align 4
  %146 = load i32, i32* %21, align 4
  %147 = shl i32 %146, %145
  store i32 %147, i32* %21, align 4
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %21, align 4
  %150 = sdiv i32 %149, %148
  store i32 %150, i32* %21, align 4
  %151 = load i32, i32* %21, align 4
  %152 = load i32*, i32** %9, align 8
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %11, align 4
  %156 = mul nsw i32 %154, %155
  %157 = add nsw i32 %153, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %152, i64 %158
  store i32 %151, i32* %159, align 4
  br label %179

160:                                              ; preds = %141
  %161 = load i32, i32* %21, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %21, align 4
  %163 = load i32, i32* @QEXPSHIFT, align 4
  %164 = load i32, i32* %21, align 4
  %165 = shl i32 %164, %163
  store i32 %165, i32* %21, align 4
  %166 = load i32, i32* %16, align 4
  %167 = load i32, i32* %21, align 4
  %168 = sdiv i32 %167, %166
  store i32 %168, i32* %21, align 4
  %169 = load i32, i32* %21, align 4
  %170 = sub nsw i32 0, %169
  %171 = load i32*, i32** %9, align 8
  %172 = load i32, i32* %17, align 4
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %11, align 4
  %175 = mul nsw i32 %173, %174
  %176 = add nsw i32 %172, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %171, i64 %177
  store i32 %170, i32* %178, align 4
  br label %179

179:                                              ; preds = %160, %144
  br label %189

180:                                              ; preds = %125
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %17, align 4
  %183 = load i32, i32* %18, align 4
  %184 = load i32, i32* %11, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 %182, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %181, i64 %187
  store i32 0, i32* %188, align 4
  br label %189

189:                                              ; preds = %180, %179
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %17, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %17, align 4
  br label %121

193:                                              ; preds = %121
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %18, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %18, align 4
  br label %116

197:                                              ; preds = %116
  br label %285

198:                                              ; preds = %103
  store i32 0, i32* %18, align 4
  br label %199

199:                                              ; preds = %281, %198
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %14, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %284

203:                                              ; preds = %199
  store i32 0, i32* %17, align 4
  br label %204

204:                                              ; preds = %277, %203
  %205 = load i32, i32* %17, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %280

208:                                              ; preds = %204
  %209 = load i8**, i8*** %10, align 8
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* %18, align 4
  %212 = load i32, i32* %11, align 4
  %213 = mul nsw i32 %211, %212
  %214 = add nsw i32 %210, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %209, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = ptrtoint i8* %217 to i32
  store i32 %218, i32* %22, align 4
  %219 = load i32, i32* %22, align 4
  %220 = load i32, i32* %19, align 4
  %221 = add nsw i32 %219, %220
  %222 = load i32, i32* %20, align 4
  %223 = icmp ugt i32 %221, %222
  br i1 %223, label %224, label %267

224:                                              ; preds = %208
  %225 = load i32, i32* %22, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %245

227:                                              ; preds = %224
  %228 = load i32, i32* @QEXPSHIFT, align 4
  %229 = load i32, i32* %22, align 4
  %230 = shl i32 %229, %228
  store i32 %230, i32* %22, align 4
  %231 = load i32, i32* %22, align 4
  %232 = load i32, i32* %12, align 4
  %233 = add nsw i32 %231, %232
  %234 = load i32, i32* %16, align 4
  %235 = sdiv i32 %233, %234
  store i32 %235, i32* %22, align 4
  %236 = load i32, i32* %22, align 4
  %237 = load i32*, i32** %9, align 8
  %238 = load i32, i32* %17, align 4
  %239 = load i32, i32* %18, align 4
  %240 = load i32, i32* %11, align 4
  %241 = mul nsw i32 %239, %240
  %242 = add nsw i32 %238, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %237, i64 %243
  store i32 %236, i32* %244, align 4
  br label %266

245:                                              ; preds = %224
  %246 = load i32, i32* %22, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %22, align 4
  %248 = load i32, i32* @QEXPSHIFT, align 4
  %249 = load i32, i32* %22, align 4
  %250 = shl i32 %249, %248
  store i32 %250, i32* %22, align 4
  %251 = load i32, i32* %22, align 4
  %252 = load i32, i32* %12, align 4
  %253 = add nsw i32 %251, %252
  %254 = load i32, i32* %16, align 4
  %255 = sdiv i32 %253, %254
  store i32 %255, i32* %22, align 4
  %256 = load i32, i32* %22, align 4
  %257 = sub nsw i32 0, %256
  %258 = load i32*, i32** %9, align 8
  %259 = load i32, i32* %17, align 4
  %260 = load i32, i32* %18, align 4
  %261 = load i32, i32* %11, align 4
  %262 = mul nsw i32 %260, %261
  %263 = add nsw i32 %259, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %258, i64 %264
  store i32 %257, i32* %265, align 4
  br label %266

266:                                              ; preds = %245, %227
  br label %276

267:                                              ; preds = %208
  %268 = load i32*, i32** %9, align 8
  %269 = load i32, i32* %17, align 4
  %270 = load i32, i32* %18, align 4
  %271 = load i32, i32* %11, align 4
  %272 = mul nsw i32 %270, %271
  %273 = add nsw i32 %269, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %268, i64 %274
  store i32 0, i32* %275, align 4
  br label %276

276:                                              ; preds = %267, %266
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %17, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %17, align 4
  br label %204

280:                                              ; preds = %204
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %18, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %18, align 4
  br label %199

284:                                              ; preds = %199
  br label %285

285:                                              ; preds = %94, %284, %197
  ret void
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
