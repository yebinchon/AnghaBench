; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc.c_adjust_frame_information.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc.c_adjust_frame_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64*, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32*, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @adjust_frame_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_frame_information(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %187, %2
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %190

20:                                               ; preds = %16
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %12, align 8
  store i32 0, i32* %10, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %93, %20
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %103

42:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %89, %42
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %44, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %43
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %81, %53
  %58 = load i32, i32* %11, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 %69, 16
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %70, %71
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %68, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %60, %57
  %79 = phi i1 [ false, %57 ], [ %77, %60 ]
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %11, align 4
  br label %57

84:                                               ; preds = %78
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i8* @FFMAX(i32 %85, i32 %86)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %43

92:                                               ; preds = %43
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %36

103:                                              ; preds = %36
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %176, %103
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %186

113:                                              ; preds = %107
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %172, %113
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %175

120:                                              ; preds = %114
  store i32 1, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %153, %120
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %124, %131
  %133 = icmp slt i32 %123, %132
  br i1 %133, label %134, label %156

134:                                              ; preds = %122
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = mul nsw i32 %143, 16
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %142, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %134
  store i32 0, i32* %5, align 4
  br label %156

152:                                              ; preds = %134
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %122

156:                                              ; preds = %151, %122
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = mul nsw i32 %166, 16
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %165, i64 %170
  store i32 %157, i32* %171, align 4
  br label %172

172:                                              ; preds = %156
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %114

175:                                              ; preds = %114
  br label %176

176:                                              ; preds = %175
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %6, align 4
  br label %107

186:                                              ; preds = %107
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %16

190:                                              ; preds = %16
  %191 = load i32, i32* %4, align 4
  %192 = icmp sgt i32 %191, 1
  br i1 %192, label %193, label %286

193:                                              ; preds = %190
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %286

198:                                              ; preds = %193
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  store %struct.TYPE_8__* %203, %struct.TYPE_8__** %13, align 8
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i64 1
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  store %struct.TYPE_8__* %208, %struct.TYPE_8__** %14, align 8
  store i32 0, i32* %15, align 4
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @FFMAX(i32 %211, i32 %214)
  %216 = ptrtoint i8* %215 to i32
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 3
  store i32 %216, i32* %218, align 4
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 4
  store i32 0, i32* %6, align 4
  br label %224

224:                                              ; preds = %257, %198
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = mul nsw i32 %228, 16
  %230 = icmp slt i32 %225, %229
  br i1 %230, label %231, label %260

231:                                              ; preds = %224
  store i32 0, i32* %5, align 4
  br label %232

232:                                              ; preds = %253, %231
  %233 = load i32, i32* %5, align 4
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = icmp slt i32 %233, %236
  br i1 %237, label %238, label %256

238:                                              ; preds = %232
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 1
  %241 = load i64*, i64** %240, align 8
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* %5, align 4
  %244 = add nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %241, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %238
  %250 = load i32, i32* %15, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %15, align 4
  br label %252

252:                                              ; preds = %249, %238
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %5, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %5, align 4
  br label %232

256:                                              ; preds = %232
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %6, align 4
  %259 = add nsw i32 %258, 16
  store i32 %259, i32* %6, align 4
  br label %224

260:                                              ; preds = %224
  %261 = load i32, i32* %15, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %260
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %263, %260
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  store i32 0, i32* %270, align 8
  br label %285

271:                                              ; preds = %263
  %272 = load i32, i32* %15, align 4
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = mul nsw i32 %275, %278
  %280 = icmp slt i32 %272, %279
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i32 1, i32 2
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  store i32 %282, i32* %284, align 8
  br label %285

285:                                              ; preds = %271, %268
  br label %286

286:                                              ; preds = %285, %193, %190
  ret void
}

declare dso_local i8* @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
